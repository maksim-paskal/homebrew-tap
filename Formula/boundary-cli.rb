class BoundaryCli < Formula
  desc "Helper tool for HashiCorp Boundary"
  homepage "https://github.com/maksim-paskal/boundary-cli"
  version "0.0.2"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # curl -L https://github.com/maksim-paskal/boundary-cli/releases/download/v0.0.2/checksums.txt
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/boundary-cli/releases/download/v#{version}/boundary-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "c6c1ad06b3b4b7b282392d6efabdf88a5339776f9f6ad88e738e97a9207b7869"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/boundary-cli/releases/download/v#{version}/boundary-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "064c8cb3358ed7c5ff0c8ebdde8dc28484e731d8093cfb5dc094e46581b5d16c"
    end
  end

  def install
    bin.install "./boundary-cli" => "boundary-cli" if OS.mac?
  end

  test do
    system "bin/boundary-cli", "--version"
  end
end
