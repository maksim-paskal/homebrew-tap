class HcloudK8sCtl < Formula
  desc ""
  homepage ""
  version "v0.0.6"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.0.6/hcloud-k8s-ctl-darwin-amd64"
    sha256 "caf702d8bf54d709ce3fac99a3c78d613e4e027f63bd39ad3f6bdd473b676413"
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