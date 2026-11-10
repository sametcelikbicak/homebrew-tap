class Timebender < Formula
  desc "CLI-first Pomodoro timer with a live-synchronised web interface"
  homepage "https://github.com/sametcelikbicak/timebender"
  url "https://registry.npmjs.org/timebender/-/timebender-0.1.0.tgz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"

  # timebender is a Node.js CLI and requires Node.js >= 22 in PATH.
  # The dependency is not declared on purpose: Homebrew's node formula pulls in
  # 19 dependencies and has no bottle for older macOS releases, while developers
  # running timebender already have a Node.js toolchain (nvm, asdf, brew, ...).

  # npm pack prefixes every path with "package/", so install the contents of
  # package/ into libexec rather than the wrapper directory itself.
  def install
    libexec.install Dir["package/*"]
    chmod 0755, libexec/"bin/index.js"
    bin.install_symlink libexec/"bin/index.js" => "timebender"
  end

  test do
    assert_match "timebender", shell_output("#{bin}/timebender --version")
  end
end
