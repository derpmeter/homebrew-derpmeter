class Derp < Formula
  desc "Rate AI coding agents from the terminal, statusline and MCP"
  homepage "https://derpmeter.com/apps"
  url "https://registry.npmjs.org/derpmeter/-/derpmeter-0.5.11.tgz"
  sha256 "528a6765ae6b6bf15fd348e589e609bb29a2650852de6bad23c76adabb46fc55"
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
