class HcloudK8sCtl < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.1.2"

  if OS.mac?
    url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
    sha256 "2fcda82f9b5bb3ac35e28211b4ad0d7707564aa4701f88458c11d85b509014ee"
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