class HcloudK8sCtl < Formula
  desc "High available Kubernetes cluster on Hetzner Cloud with Autoscaling"
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.3.7"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # curl -L https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.3.5/checksums.txt
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
      sha256 "e198b0e9340c5b2a9f2963ef99c195031b783d110a1ce8839ca620423372765f"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_arm64"
      sha256 "6d2497fc74bbfdffa303daf3cec5d85ca7c0379784f71fe3f947ffe321dd9b44"
    end
  end

  def install
    bin.install "./hcloud-k8s-ctl_#{version}_darwin_amd64" => "hcloud-k8s-ctl" if Hardware::CPU.intel?
    bin.install "./hcloud-k8s-ctl_#{version}_darwin_arm64" => "hcloud-k8s-ctl" if Hardware::CPU.arm?
  end

  test do
    system "bin/hcloud-k8s-ctl", "--version"
  end
end
