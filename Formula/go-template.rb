class GoTemplate < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/go-template"
  version "0.0.9"

  if OS.mac?
    url "https://github.com/maksim-paskal/go-template/releases/download/v#{version}/go-template-darwin-amd64"
    sha256 "b5243c866c7c3129f9c2a3bf756ba1b17ea163b542dc795670e42e1e5118b3bf"
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