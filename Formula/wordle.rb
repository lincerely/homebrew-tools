class Wordle < Formula
  version "1.0"
  desc "A commandline clone of wordle"
  homepage "https://github.com/hughpyle/ASR33/blob/master/bin/wordle"
  url "https://raw.githubusercontent.com/hughpyle/ASR33/master/bin/wordle"
  sha256 "4305ec9242d978371796b9ebef3f9ebec2bf0b60bbeaba991e988f4299802bf7"

  def install
    bin.install "wordle"
  end

  test do
    system bin/"wordle"
  end
end
