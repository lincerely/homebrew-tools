class Lite < Formula
  version "1.11"
  desc "A lightweight text editor written in Lua"
  homepage "https://github.com/rxi/lite"
  url "#{homepage}/archive/v#{version}.tar.gz"
  sha256 "2fd9466663182da56a36a557d05925d226dc1c5de6fb24e423a7b0056db2eec4"
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
