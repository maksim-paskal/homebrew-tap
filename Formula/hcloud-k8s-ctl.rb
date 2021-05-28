class HcloudK8sCtl < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.0.5/hcloud-k8s-ctl-darwin-amd64"
    sha256 "dcb3946ceb31eca812987818e384f500f23805eaacf3eabed9b72eee99fd7930"
  end

  def install
    if OS.mac?
      bin.install "./hcloud-k8s-ctl-darwin-amd64" => "hcloud-k8s-ctl"
    end
  end

  test do
    system "#{bin}/hcloud-k8s-ctl --version"
  end
end