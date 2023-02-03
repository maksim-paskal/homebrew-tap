class GoTemplate < Formula
  desc ""
  homepage "https://github.com/maksim-paskal/go-template"
  version "0.1.2"

  if OS.mac?
    url "https://github.com/maksim-paskal/go-template/releases/download/v#{version}/go-template_#{version}_darwin_amd64"
    sha256 "372ce793a0546ccf804f3071dae1bfa3229ffd2d4ff9505355b13c693a279455"
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