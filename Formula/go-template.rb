class GoTemplate < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/go-template"
  version "0.1.1"

  if OS.mac?
    url "https://github.com/maksim-paskal/go-template/releases/download/v#{version}/go-template_#{version}_darwin_amd64"
    sha256 "358e2b0d67ba222e110506aa2bd94f11322eac98768c08e18f1d308fa69728d1"
  end

  def install
    if OS.mac?
      bin.install "./go-template_#{version}_darwin_amd64" => "go-template"
    end
  end

  test do
    system "#{bin}/go-template --version"
  end
end