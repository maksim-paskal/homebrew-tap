class K8sImagesCli < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/k8s-images-cli"
  version "0.0.3"

  if OS.mac?
    url "https://github.com/maksim-paskal/k8s-images-cli/releases/download/v#{version}/k8s-images-cli_#{version}_darwin_amd64"
    sha256 "29940c260b9244946392226014d548dca761e1ae4dde82d7f301b5ce05f1d833"
  end

  def install
    if OS.mac?
      bin.install "./k8s-images-cli_#{version}_darwin_amd64" => "k8s-images-cli"
    end
  end

  test do
    system "#{bin}/k8s-images-cli --version"
  end
end