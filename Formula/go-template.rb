class GoTemplate < Formula
  desc ""
  homepage ""

  if OS.mac?
    url "https://github.com/maksim-paskal/go-template/releases/download/v0.0.6/go-template-darwin-amd64"
    sha256 "389ed0e0a0c7009e7de89bd0412fda33dc10d5b50e410e3a0891fe83033a35cb"
  end

  def install
    if OS.mac?
      bin.install "./go-template-darwin-amd64"
    end
  end

  test do
    system "#{bin}/go-template --version"
  end
end