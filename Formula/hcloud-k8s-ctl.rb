class HcloudK8sCtl < Formula
  desc ""
  homepage ""
  version "v0.0.4"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.0.4/hcloud-k8s-ctl-darwin-amd64"
    sha256 "5836f6ed70103805f730c88c7d73349c257b2d00496725c4974a3c6b976e879f"
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