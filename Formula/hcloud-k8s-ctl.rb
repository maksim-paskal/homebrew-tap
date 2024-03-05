class HcloudK8sCtl < Formula
  desc "High available Kubernetes cluster on Hetzner Cloud with Autoscaling"
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.3.4"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # curl -L https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.3.4/checksums.txt
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
      sha256 "234032f9f3896a3a767811b67a4ad7b99fd5f993772ff81909bde299b59ea439"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_arm64"
      sha256 "b7dc5435900ed23c96b38cf2ae3327816aee94ac33e78dc652af504c36d98cfa"
    end
  end

  def install
    bin.install "./hcloud-k8s-ctl_#{version}_darwin_amd64" => "hcloud-k8s-ctl" if Hardware::CPU.intel?
    bin.install "./hcloud-k8s-ctl_#{version}_darwin_arm64" => "hcloud-k8s-ctl" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/hcloud-k8s-ctl", "--version"
  end
end
