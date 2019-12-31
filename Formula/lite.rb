class Lite < Formula
  version "1.0"
  desc "A lightweight text editor written in Lua"
  homepage "https://github.com/rxi/lite"
  url "#{homepage}/archive/v#{version}.tar.gz"
  sha256 "8cc97dffeb14d58d04cd402b19833e7b1831ba9826fca0d915919e8841aaa9cf"
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
