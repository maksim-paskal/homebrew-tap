class K8sResourcesCli < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/k8s-resources-cli"
  version "0.0.6"

  if OS.mac?
    url "https://github.com/maksim-paskal/k8s-resources-cli/releases/download/v#{version}/k8s-resources-cli_#{version}_darwin_amd64"
    sha256 "80f07f84997c60e6fecc793c55393797f8b6b5226e9b37c1d269e00301154145"
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