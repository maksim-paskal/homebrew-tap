class HcloudK8sCtl < Formula
  desc "High available Kubernetes cluster on Hetzner Cloud with Autoscaling"
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.4.2"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # curl -L https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.3.5/checksums.txt
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
      sha256 "8427a3de9e5abc376d4cd33dd8b640d312790552725dafb276b77d037de7c7ae"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_arm64"
      sha256 "e935af98b497120e933d1b48c6d851e87a6c24de130ce7d4bf8565007d9dbf5b"
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
