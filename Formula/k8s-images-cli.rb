class K8sImagesCli < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/k8s-images-cli"
  version "0.0.4"

  if OS.mac?
    url "https://github.com/maksim-paskal/k8s-images-cli/releases/download/v#{version}/k8s-images-cli_#{version}_darwin_amd64"
    sha256 "6344d9057f25be6501a3ad8d6d1e7829ea2dd72e3e5bf5a4d665c0cbbc35ae09"
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