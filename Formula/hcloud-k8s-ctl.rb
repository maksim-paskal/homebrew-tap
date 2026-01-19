class HcloudK8sCtl < Formula
  desc "High available Kubernetes cluster on Hetzner Cloud with Autoscaling"
  homepage "https://github.com/maksim-paskal/hcloud-k8s-ctl"
  version "0.4.6"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # curl -L https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v0.3.5/checksums.txt
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_amd64"
      sha256 "3b5489509053b6684cd2982864f82ca2a8e6dcdab35c13528f4640937acc8e18"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/hcloud-k8s-ctl/releases/download/v#{version}/hcloud-k8s-ctl_#{version}_darwin_arm64"
      sha256 "d9e779cc8347a317b8d42e6a3843a06759d73eedbe19cf1da955cbc78d9d8c67"
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
