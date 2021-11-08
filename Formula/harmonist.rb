class Harmonist < Formula
  version "0.4.1"
  desc "Harmonist is a stealth coffee-break roguelike game."
  homepage "https://harmonist.tuxfamily.org/index.html"
  url "https://download.tuxfamily.org/harmonist/releases/harmonist-#{version}-darwin_amd64.tar.gz"
  sha256 "c3b0bbc675600a79f0d2c4ae3fb7f5e2eb8c46d6ab6cb716277a9e9ccc56741f"

  def install
    bin.install "harmonist"
    resource("manpage").stage { man6.install "harmonist.6" }
  end

  resource "manpage" do
    url "https://raw.githubusercontent.com/anaseto/harmonist/v0.4.1/harmonist.6"
    sha256 "1fc90ae912151d73ea75e32c2838f19a5ab72662588505fb2040995a736ac64b"
  end

  test do
    system bin/"harmonist"
  end
end
