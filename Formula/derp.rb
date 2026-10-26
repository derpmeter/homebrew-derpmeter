class Derp < Formula
  desc "Rate AI coding agents from the terminal, statusline and MCP"
  homepage "https://derpmeter.com/apps"
  url "https://registry.npmjs.org/derpmeter/-/derpmeter-0.5.10.tgz"
  sha256 "4827c5297bc82c97666207e59d97c1d29f163a6906961682b47c695273948e34"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/derp version")
  end
end
