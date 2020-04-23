class Lite < Formula
  version "1.01"
  desc "A lightweight text editor written in Lua"
  homepage "https://github.com/rxi/lite"
  url "#{homepage}/archive/v#{version}.tar.gz"
  sha256 "3150ec861ea504f131a985862193a95cfe8a59866f7078eec7c658f1e4c1045f"
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
