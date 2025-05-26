class BoundaryCli < Formula
  desc "Helper tool for HashiCorp Boundary"
  homepage "https://github.com/maksim-paskal/boundary-cli"
  version "0.0.1"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # curl -L https://github.com/maksim-paskal/boundary-cli/releases/download/v0.0.1/checksums.txt
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/maksim-paskal/boundary-cli/releases/download/v#{version}/boundary-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "c79d4eb40545d7a896ee444de972870c948c5b93c21dc569664a6ff1560a5872"
    end

    if Hardware::CPU.arm?
      url "https://github.com/maksim-paskal/boundary-cli/releases/download/v#{version}/boundary-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "1051647a2d2c748e6e556bbbfa769f3291908813fddebc81630884406301baca"
    end
  end

  def install
    bin.install "./boundary-cli" => "boundary-cli" if OS.mac?
  end

  test do
    system "bin/boundary-cli", "--version"
  end
end
