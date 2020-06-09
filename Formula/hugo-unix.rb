class HugoUnix < Formula
  desc "Hugo command-line compiler, debugger and interpreter"
  homepage "https://www.generalcoffee.com/hugo"
  url "http://www.ifarchive.org/if-archive/programming/hugo/source/hugov31_unix_source.tar.gz"
  sha256 "bf5ec8f4331e7d1ce18c304fc9131d759e371310d5fe894ffe37609eabd08945"
  version "3.1.03"

  depends_on "ncurses"

  def install
    system "make"
    bin.install "hc", "hd", "he"
  end

  test do
    system "#{bin}/hc"
    system "#{bin}/hd"
    system "#{bin}/he"
  end
end
