class Crackquiz < Formula
  desc "Cross-platform CLI tool for opening-quiz skill"
  homepage "https://github.com/anouar-bm/-CrackQuiz"
  url "https://registry.npmjs.org/crackquiz/-/crackquiz-0.2.9.tgz"
  sha256 "d70e94b44352ec9209e8bbf9e69ee6116d96a975"
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
