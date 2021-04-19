class Boohu < Formula
  version "0.13.0"
  desc "Break Out Of Hareka's Underground (Boohu) is a turn-based coffee-break roguelike game with a heavy focus on tactical positioning mechanisms"
  homepage "https://download.tuxfamily.org/boohu/index.html"
  url "https://download.tuxfamily.org/boohu/downloads/boohu-#{version}-darwin_amd64.tar.gz"
  sha256 "499f938c92c54420d75cef1f33ac99f143155a836a39785bd6ce92a93f72e20f"

  def install
    bin.install "boohu"
    resource("manpage").stage { man6.install "boohu.6" }
  end

  resource "manpage" do
    url "https://raw.githubusercontent.com/anaseto/boohu/f64c774c59d0d063ae2d560f87959ae7649964de/boohu.6"
    sha256 "7b54ed53331d014a0522796518538f514cf452dc868863914579a60431eb001c"
  end

  test do
    system bin/"boohu"
  end
end
