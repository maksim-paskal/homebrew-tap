class HcloudK8sCtl < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.1.1"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
    sha256 "c53ad019bff7d147e5851b7a24fbd36f9befdf029e82240761e4e3920b07ff71"
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