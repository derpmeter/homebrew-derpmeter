class Derp < Formula
  desc "Rate AI coding agents from the terminal, statusline and MCP"
  homepage "https://derpmeter.com/apps"
  url "https://registry.npmjs.org/derpmeter/-/derpmeter-0.5.8.tgz"
  sha256 "927c202a87de91cd1cf42a7720cfe3ac68f5ae87e44095358c2a586335ff2ec9"
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
