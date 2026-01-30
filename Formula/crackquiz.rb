require "language/node"

class Crackquiz < Formula
  desc "Cross-platform CLI tool for opening-quiz skill"
  homepage "https://github.com/anouar-bm/-CrackQuiz"
  url "https://registry.npmjs.org/crackquiz/-/crackquiz-0.2.10.tgz"
  sha256 "6e27b8717d3676ec8764df648daa883bd596c0b00e67f8754ae58a8d9e2a73e5"
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
