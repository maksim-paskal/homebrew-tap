class K8sImagesCli < Formula
  desc "Tool for getting k8s images from yaml files and docker images"
  homepage "https://github.com/maksim-paskal/k8s-images-cli"
  version "0.0.7"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/k8s-images-cli/releases/download/v#{version}/k8s-images-cli_#{version}_darwin_amd64"
      sha256 :no_check
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/k8s-images-cli/releases/download/v#{version}/k8s-images-cli_#{version}_darwin_arm64"
      sha256 :no_check
    end
  end

  def install
    bin.install "./k8s-images-cli_#{version}_darwin_amd64" => "k8s-images-cli" if Hardware::CPU.intel?
    bin.install "./k8s-images-cli_#{version}_darwin_arm64" => "k8s-images-cli" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/k8s-images-cli", "--version"
  end
end
