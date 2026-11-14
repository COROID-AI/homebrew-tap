# The CoRoid connector, from its npm package. Updated by .github/workflows/update.yml
# only for a release whose attestation names COROID-AI/coroid-connector's Release workflow.
class CoroidConnector < Formula
  desc "Lets the coding agents on your machine do work CoRoid assigns to them"
  homepage "https://github.com/COROID-AI/coroid-connector"
  url "https://registry.npmjs.org/@coroid/connector/-/connector-0.0.0.tgz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
