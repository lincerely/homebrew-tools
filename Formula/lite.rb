class Lite < Formula
  version "1.02"
  desc "A lightweight text editor written in Lua"
  homepage "https://github.com/rxi/lite"
  url "#{homepage}/archive/v#{version}.tar.gz"
  sha256 "441068b0f0f6bd0ca42cf03e3c2197b954bd6376595b986ead70562d7b7c9141"
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
