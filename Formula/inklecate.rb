class Inklecate < Formula
  version "1.0.0"
  desc "Commandline interpreter for inkle's open source scripting language for writing interactive narrative"
  homepage "https://github.com/inkle/ink"
  url "#{homepage}/releases/download/v#{version}/inklecate_mac.zip"
  sha256 "b6f4dd1f95c180637ce193dbb5fa6d59aeafe49a2121a05b7822e6cbbaa6931f"

  def install
    bin.install "inklecate"
  end

  test do
    system bin/"inklecate"
  end
end
