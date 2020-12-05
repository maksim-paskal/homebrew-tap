class GoTemplate < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  if OS.mac?
    url "https://github.com/maksim-paskal/go-template/releases/download/v0.0.7/go-template-darwin-amd64"
    sha256 "a109a95c04aa7c257a764ad8b2e1c021d2085d1a1c3b0d4901431ec5406fb7c6"
  end

  def install
    if OS.mac?
      bin.install "./go-template-darwin-amd64" => "go-template"
    end
  end

  test do
    system "#{bin}/go-template --version"
  end
end