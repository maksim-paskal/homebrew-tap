class HcloudK8sCtl < Formula
  desc ""
  homepage ""
  version "v0.0.2"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.0.2/hcloud-k8s-ctl-darwin-amd64"
    sha256 "53001e556edc1f6ab76caf71778378cb38885dc078aad0505c432d993aa76d04"
  end

  def install
    if OS.mac?
      bin.install "./hcloud-k8s-ctl-darwin-amd64" => "hcloud-k8s-ctl"
    end
  end
end