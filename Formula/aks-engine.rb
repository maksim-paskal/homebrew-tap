class AksEngine < Formula
  desc ""
  homepage ""
  version "v0.65.0"

  if OS.mac?
    url "https://github.com/maksim-paskal/homebrew-tap/releases/download/binary/aks-engine"
    sha256 "b1d3b258c76d0fb0c787e5543a1f4067079af22791c1ab20323e376157d7aaf9"
  end

  def install
    if OS.mac?
      bin.install "./aks-engine" => "aks-engine"
    end
  end

  test do
    system "bin/aks-engine version"
  end
end