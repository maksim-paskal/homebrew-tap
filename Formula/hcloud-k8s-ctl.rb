class HcloudK8sCtl < Formula
  desc ""
  homepage ""
  version "v0.0.8"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.0.8/hcloud-k8s-ctl-darwin-amd64"
    sha256 "ed1892a05f660225833e4ed8dee2127d80cf147799a9242e85291c9aed1ba762"
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