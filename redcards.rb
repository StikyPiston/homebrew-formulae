class Redcards < Formula
  desc "A simple spaced repetition flashcard study tool"
  homepage ""
  url "https://codeberg.org/StikyPiston/Redcards/archive/131125c.zip"
  sha256 "636b9a09999b2e6c34892e601dd5368358d52565431f0c6eec6e63f6c6d1ca7b"
  version "131125c"
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
