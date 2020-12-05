class GoTemplate < Formula
  desc ""
  homepage ""
  version "v0.0.8"

  if OS.mac?
    url "https://github.com/maksim-paskal/go-template/releases/download/v0.0.8/go-template-darwin-amd64"
    sha256 "b985f2a8fcf095d6de8cb7fa78dbbf16b9a888fba799876813020726a9dc50fd"
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