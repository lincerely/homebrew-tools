class Inklecate < Formula
  version "0.9.0"
  desc "Commandline interepter for inkle's open source scripting language for writing interactive narrative"
  homepage "https://github.com/inkle/ink"
  url "#{homepage}/releases/download/#{version}/inklecate_mac.zip"
  sha256 "ee1fd74a55df1f3c3607e9f51f5c0f9a7d9787aa52973189d085cc1b537e3dd0"

  def install
    bin.install "inklecate"
  end

  test do
    system bin/"inklecate"
  end
end
