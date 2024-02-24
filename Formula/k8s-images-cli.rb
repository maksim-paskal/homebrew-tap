class K8sImagesCli < Formula
  desc "Tool for getting k8s images from yaml files and docker images"
  homepage "https://github.com/maksim-paskal/k8s-images-cli"
  version "0.0.7"

  # curl -L https://github.com/maksim-paskal/k8s-images-cli/releases/download/v0.0.7/checksums.txt
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/k8s-images-cli/releases/download/v#{version}/k8s-images-cli_#{version}_darwin_amd64"
      sha256 "d91608a63311ae1e6e121e13a4f3395d2a49011ce60e5031b35378b5cf6f18a5"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/k8s-images-cli/releases/download/v#{version}/k8s-images-cli_#{version}_darwin_arm64"
      sha256 "06bfde118a59a8f9537dc8fd0600ee2100454e27fd5a295b26539d8aeec905d8"
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
