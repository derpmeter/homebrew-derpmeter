class Derp < Formula
  desc "Rate AI coding agents from the terminal, statusline and MCP"
  homepage "https://derpmeter.com/apps"
  url "https://registry.npmjs.org/derpmeter/-/derpmeter-0.5.6.tgz"
  sha256 "bf39206322c581699462402203f363aaa13f84f9c04be3e94646d604596cb289"
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
