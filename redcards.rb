class Redcards < Formula
  desc "A simple spaced repetition flashcard study tool"
  homepage ""
  url "https://codeberg.org/StikyPiston/Redcards/archive/131125a.zip"
  sha256 "fbfc136f34a79b52f8305de31797e7268f5adc2e5a5fb32b723f5204ce8f65b2"
  version "131125a"
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
