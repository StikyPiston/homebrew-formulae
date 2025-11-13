class Redcards < Formula
  desc "A simple spaced repetition flashcard study tool"
  homepage ""
  url "https://codeberg.org/StikyPiston/Redcards/archive/131125b.zip"
  sha256 "b53b2746aa487352f93d318a16fa71c231312dfc003d91822acc75f6a47abec9"
  version "131125b"
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
