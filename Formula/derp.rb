class Derp < Formula
  desc "Rate AI coding agents from the terminal, statusline and MCP"
  homepage "https://derpmeter.com/apps"
  url "https://registry.npmjs.org/derpmeter/-/derpmeter-0.5.7.tgz"
  sha256 "0cbe69ee5023d50402927db353f5cb46e80c5fd4b4cbd9e023412a065bc0cfb8"
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
