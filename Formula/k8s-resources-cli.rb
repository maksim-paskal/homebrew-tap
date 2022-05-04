class K8sResourcesCli < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/k8s-resources-cli"
  version "0.0.6"

  if OS.mac?
    url "https://github.com/maksim-paskal/k8s-resources-cli/releases/download/v#{version}/k8s-resources-cli_#{version}_darwin_amd64"
    sha256 "63423c00696e1793d215752ad6292c006c13243df820975c38af7964f69f1805"
  end

  def install
    if OS.mac?
      bin.install "./k8s-resources-cli_#{version}_darwin_amd64" => "k8s-resources-cli"
    end
  end

  test do
    system "#{bin}/k8s-resources-cli --version"
  end
end