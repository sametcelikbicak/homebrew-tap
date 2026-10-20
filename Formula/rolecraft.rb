class Rolecraft < Formula
  desc "Package manager for AI agents - install, test and publish skills"
  homepage "https://rolecraft-sh.github.io/rolecraft/"
  url "https://registry.npmjs.org/rolecraft/-/rolecraft-2.6.2.tgz"
  sha256 "419c9723589c716615805e255c37230db4f9b0cd391b53528e43ca62e3f84ec9"
  license "MIT"

  # rolecraft is a Node.js CLI and requires Node.js >= 22 in PATH.
  # The dependency is not declared on purpose: Homebrew's node formula pulls in
  # 19 dependencies and has no bottle for older macOS releases, while developers
  # running rolecraft already have a Node.js toolchain (nvm, asdf, brew, ...).

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"bin/rolecraft.js"
    bin.install_symlink libexec/"bin/rolecraft.js" => "rolecraft"
  end

  test do
    assert_match "rolecraft", shell_output("#{bin}/rolecraft --version")
  end
end
