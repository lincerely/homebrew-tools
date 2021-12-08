class Kilo < Formula
  desc "A text editor in less than 1000 LOC with syntax highlight and search."
  homepage "https://github.com/lincerely/kilo"
  head "https://github.com/lincerely/kilo.git"

  def install
    system "make"
    bin.install "kilo"
    man1.install "kilo.1"
  end
end
