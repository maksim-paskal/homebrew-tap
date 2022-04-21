class K8sResourcesCli < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/k8s-resources-cli"
  version "0.0.4"

  if OS.mac?
    url "https://github.com/maksim-paskal/k8s-resources-cli/releases/download/v#{version}/k8s-resources-cli_#{version}_darwin_amd64"
    sha256 "aaed74e7c08612a7ff796119f6ede7b961570e712bf8421af30c79667accf582"
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