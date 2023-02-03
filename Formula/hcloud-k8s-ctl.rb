class HcloudK8sCtl < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.1.8"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
    sha256 "57c8159df3f32dad524eae719fda7feed9f1cdc872b45a9133b82c7e221487ab"
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