class HcloudK8sCtl < Formula
  desc "High available Kubernetes cluster on Hetzner Cloud with Autoscaling"
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.4.5"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # curl -L https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.3.5/checksums.txt
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
      sha256 "afa2f38b65eba8e87622a6579cd7c64ee865f5e2aaff5a18d4bd9ad9dc2f09b9"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_arm64"
      sha256 "eaa3c215bf9d43cceff164b5ad4d426924d41abab9f7ba81df52261ea92181d5"
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
