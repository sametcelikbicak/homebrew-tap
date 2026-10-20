class Vidfix < Formula
  desc "Diagnose and fix video playback compatibility issues"
  homepage "https://github.com/sametcelikbicak/vidfix"
  url "https://github.com/sametcelikbicak/vidfix/releases/download/v1.0.0/vidfix-1.0.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  def install
    bin.install "bin/vidfix"
  end

  test do
    assert_match "vidfix", shell_output("#{bin}/vidfix --version")
  end
end
