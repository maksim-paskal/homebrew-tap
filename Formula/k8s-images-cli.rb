class K8sImagesCli < Formula
  desc "Tool for getting k8s images from yaml files and docker images"
  homepage "https://github.com/maksim-paskal/k8s-images-cli"
  version "0.0.8"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :mojave

  # curl -L https://github.com/maksim-paskal/k8s-images-cli/releases/download/v0.0.8/checksums.txt
  if Hardware::CPU.intel?
    url "https://github.com/maksim-paskal/k8s-images-cli/releases/download/v#{version}/k8s-images-cli_#{version}_darwin_amd64"
    sha256 "76e951dcc08fa4a2b6cd22ba79b08498edf84a9eda4fb4c3aa19aea52dc7e5e4"
  end

  if Hardware::CPU.arm?
    url "https://github.com/maksim-paskal/k8s-images-cli/releases/download/v#{version}/k8s-images-cli_#{version}_darwin_arm64"
    sha256 "6447694836f70885b61e33ccb984fabe91069df298a28ca058826bc976aa9d83"
  end

  def install
    bin.install "./k8s-images-cli_#{version}_darwin_amd64" => "k8s-images-cli" if Hardware::CPU.intel?
    bin.install "./k8s-images-cli_#{version}_darwin_arm64" => "k8s-images-cli" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/k8s-images-cli", "--version"
  end
end
