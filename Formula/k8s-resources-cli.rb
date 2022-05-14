class K8sResourcesCli < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/k8s-resources-cli"
  version "0.0.6"

  if OS.mac?
    url "https://github.com/maksim-paskal/k8s-resources-cli/releases/download/v#{version}/k8s-resources-cli_#{version}_darwin_amd64"
    sha256 "872bf3c0d1681495bd42bd0b5733ba7a45cacb0cb9df85edae3c21b1c6033341"
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