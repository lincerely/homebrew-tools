class Lite < Formula
  version "1.07"
  desc "A lightweight text editor written in Lua"
  homepage "https://github.com/rxi/lite"
  url "#{homepage}/archive/v#{version}.tar.gz"
  sha256 "3285d846f85a486279b8bf14d0e4281bd7e8ca818ccacd7985d3f0c683e9c118"
  head "https://github.com/rxi/lite.git"

  depends_on "sdl2"

  def install
    system "/bin/bash build.sh"
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"lite")
  end

  test do
    system bin/"lite"
  end
end
