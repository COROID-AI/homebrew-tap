# The CoRoid connector, from its npm package. Updated by .github/workflows/update.yml
# only for a release whose attestation names COROID-AI/coroid-connector's Release workflow.
class CoroidConnector < Formula
  desc "Lets the coding agents on your machine do work CoRoid assigns to them"
  homepage "https://github.com/COROID-AI/coroid-connector"
  url "https://registry.npmjs.org/@coroid/connector/-/connector-0.7.0.tgz"
  sha256 "fe837e5c1bc89049da8c92f2dab31aed2c9e916cf06e3b749ab6da0e4fac93ab"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coroid-connector --version")
  end
end
