class HcloudK8sCtl < Formula
  desc ""
  homepage ""
  version "v0.0.3"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.0.3/hcloud-k8s-ctl-darwin-amd64"
    sha256 "a94466fbe638c8e3f4e7e352e1cb86991ed47856725ec3245820aee3b790b4fb"
  end

  def install
    if OS.mac?
      bin.install "./hcloud-k8s-ctl-darwin-amd64" => "hcloud-k8s-ctl"
    end
  end
end