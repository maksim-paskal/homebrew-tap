class K8sResourcesCli < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/k8s-resources-cli"
  version "0.0.7"

  if OS.mac?
    url "https://github.com/maksim-paskal/k8s-resources-cli/releases/download/v#{version}/k8s-resources-cli_#{version}_darwin_amd64"
    sha256 "2ece5d72cc94fa7dbb7d58488a8142170438c135eed2621f9484cd0985a4cd26"
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