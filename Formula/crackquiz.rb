require "language/node"

class Crackquiz < Formula
  desc "Cross-platform CLI tool for opening-quiz skill"
  homepage "https://github.com/anouar-bm/-CrackQuiz"
  url "https://registry.npmjs.org/crackquiz/-/crackquiz-0.4.0.tgz"
  sha256 "971b3ee2903a1d68867e6b34a88f966fb431afe1d3456734eadb6f7471478f98"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "crackquiz", shell_output("#{bin}/crackquiz --help")
  end
end
