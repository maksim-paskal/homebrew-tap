class HcloudK8sCtl < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.0.7/hcloud-k8s-ctl-darwin-amd64"
    sha256 "5a5510c1f1f79cd7714efeabe8fa13a2080317510352d19a1ed9e2cbd005184c"
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