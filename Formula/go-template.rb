class GoTemplate < Formula
  desc ""
  homepage ""
  url "https://github.com/maksim-paskal/go-template/releases/download/v0.0.6/go-template-darwin-amd64"
  sha256 "389ed0e0a0c7009e7de89bd0412fda33dc10d5b50e410e3a0891fe83033a35cb"

  def install
    bin.install "./bin/go-template"
  end

  test do
    system "false"
  end
end