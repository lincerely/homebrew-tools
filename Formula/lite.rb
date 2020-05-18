class Lite < Formula
  version "1.04"
  desc "A lightweight text editor written in Lua"
  homepage "https://github.com/rxi/lite"
  url "#{homepage}/archive/v#{version}.tar.gz"
  sha256 "35ab2f69fae9697366ad16d1e2221a0663be23c7e5bdf28a72f9013615d31bc0"
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
