class HcloudK8sCtl < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.2.0"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
    sha256 "e605f4975e47c9dbe7ad2bd229a670c6977c1b948954c034a659ff5e27e3937e"
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