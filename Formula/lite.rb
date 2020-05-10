class Lite < Formula
  version "1.03"
  desc "A lightweight text editor written in Lua"
  homepage "https://github.com/rxi/lite"
  url "#{homepage}/archive/v#{version}.tar.gz"
  sha256 "aea78d60683c615bae5cbe4530d3eea6f658d07ff6952d15748df27d2d944df0"
  head "https://github.com/rxi/lite.git"

  depends_on "sdl2"

  def install
    system "/usr/bin/python", "build.py"
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"lite")
  end

  test do
    system bin/"lite"
  end
end
