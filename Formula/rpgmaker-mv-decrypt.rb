class RpgmakerMvDecrypt < Formula
  version "0.4.1"
  desc "Decrypt build-in encrypted files from RPG Maker MV or MZ"
  homepage "https://github.com/Petschko/Java-RPG-Maker-MV-Decrypter"
  url "https://github.com/Petschko/Java-RPG-Maker-MV-Decrypter/releases/download/v.0.4.1-alpha/RPG.Maker.MV.Decrypter_0.4.1.jar"
  sha256 "df9b115b0271be34330283ef46e552448ce79b49be8b9e065dc8aa2dc848f442"

  def install
    libexec.install "RPG.Maker.MV.Decrypter_0.4.1.jar"
    bin.write_jar_script libexec/"RPG.Maker.MV.Decrypter_0.4.1.jar", "rpgmakerDecrypt", java_version: "1.8"
  end

  test do
    system bin/"rpgmakerDecrypt", "help"
  end
end
