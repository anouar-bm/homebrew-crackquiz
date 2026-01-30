require "language/node"

class Crackquiz < Formula
  desc "Cross-platform CLI tool for opening-quiz skill"
  homepage "https://github.com/anouar-bm/-CrackQuiz"
  url "https://registry.npmjs.org/crackquiz/-/crackquiz-0.3.0.tgz"
  sha256 "052682bf2609e923023e3fd46be624e22289421fe76d26c6b747834e3fc9a607"
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
