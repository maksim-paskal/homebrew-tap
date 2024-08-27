class K8sResourcesCli < Formula
  desc "Tool to get k8s resources usage in a namespace"
  homepage "https://github.com/maksim-paskal/k8s-resources-cli"
  version "0.0.9"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # curl -L https://github.com/maksim-paskal/k8s-resources-cli/releases/download/v0.0.9/checksums.txt
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/k8s-resources-cli/releases/download/v#{version}/k8s-resources-cli_#{version}_darwin_amd64"
      sha256 "75e06ff35da5ddad3c1bda3fc773408361b6a9e280a77ff28554b8750beedf1c"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/k8s-resources-cli/releases/download/v#{version}/k8s-resources-cli_#{version}_darwin_arm64"
      sha256 "8d3eb52ea3fc814c3757ccca5a46e4c93c0988ee9891f8a26b638b7d7ecfe51a"
    end
  end

  def install
    if OS.mac?
      bin.install "./k8s-resources-cli_#{version}_darwin_amd64" => "k8s-resources-cli" if Hardware::CPU.intel?
      bin.install "./k8s-resources-cli_#{version}_darwin_arm64" => "k8s-resources-cli" if Hardware::CPU.arm?
    end
  end

  test do
    system "bin/k8s-resources-cli", "--version"
  end
end
