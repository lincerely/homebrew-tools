class Lite < Formula
  version "1.11"
  desc "A lightweight text editor written in Lua, macmodkeys plugin included"
  homepage "https://github.com/rxi/lite"
  url "#{homepage}/archive/v#{version}.tar.gz"
  sha256 "2fd9466663182da56a36a557d05925d226dc1c5de6fb24e423a7b0056db2eec4"
  head "https://github.com/rxi/lite.git"

  depends_on "sdl2"

  def install
    system "/bin/bash build.sh"
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"lite")
    resource("macmodkeys").stage { (libexec/"data/plugins").install "macmodkeys.lua" }
  end

  test do
    system bin/"lite"
  end

  resource "macmodkeys" do
    url "https://raw.githubusercontent.com/rxi/lite-plugins/master/plugins/macmodkeys.lua"
    sha256 "65eebbb921b24b60208d08e59eb3134e3b1c2dafc32288654ccf8cac0751f78a"
  end
end
