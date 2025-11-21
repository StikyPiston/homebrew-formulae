class Redcards < Formula
  desc "A simple spaced repetition flashcard study tool"
  homepage ""
  url "https://codeberg.org/StikyPiston/Redcards/archive/211125a.zip"
  sha256 "f3c44487bbed3f553c13921dc98554637016a85290d135d3a6264f5b0d2dd366"
  version "211125a"
  license "MIT"
  
  depends_on "ruby"

  def install
    system "gem install tty-prompt"
    bin.install "redcards"
  end

  test do
    system "redcards amount"
  end
end
