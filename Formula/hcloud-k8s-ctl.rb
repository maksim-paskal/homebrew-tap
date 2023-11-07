class HcloudK8sCtl < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.3.0"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
    sha256 "778c4fabd0f98c3859dd0b8d41a5f6c2bcc8ba4cf9a0e204e344901857bc890a"
  end

  def install
    if OS.mac?
      bin.install "./hcloud-k8s-ctl_#{version}_darwin_amd64" => "hcloud-k8s-ctl"
    end
  end

  test do
    system "#{bin}/hcloud-k8s-ctl --version"
  end
end