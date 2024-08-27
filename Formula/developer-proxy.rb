class DeveloperProxy < Formula
  desc "Tool to make developer's life easier"
  homepage "https://github.com/maksim-paskal/developer-proxy"
  version "0.0.5"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "#{homepage}/releases/download/v#{version}/developer-proxy_#{version}_darwin_amd64.tar.gz"
      sha256 "b316af2da67f7645ff4fb0ea87995e846111039247e695f90cc03be8997016ea"
    end

    if Hardware::CPU.arm?
      url "#{homepage}/releases/download/v#{version}/developer-proxy_#{version}_darwin_arm64.tar.gz"
      sha256 "07acdc03c008a29c5573afb8fdfbe80f05128f0a31d810ca1debe16e5cdc6216"
    end
  end

  def install
    bin.install "./developer-proxy" => "developer-proxy"
  end

  test do
    system "bin/developer-proxy", "--version"
  end
end
