class Vidfix < Formula
  desc "Diagnose and fix video playback compatibility issues"
  homepage "https://github.com/sametcelikbicak/vidfix"
  url "https://github.com/sametcelikbicak/vidfix/releases/download/v1.0.0/vidfix-1.0.0.tar.gz"
  sha256 "c1530a0dec62740eb07ce430098579d7e76538ac303f395b2873c13be97b6136"
  license "MIT"

  def install
    bin.install "bin/vidfix"
  end

  test do
    assert_match "vidfix", shell_output("#{bin}/vidfix --version")
  end
end
