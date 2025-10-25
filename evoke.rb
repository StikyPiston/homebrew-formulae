class Evoke < Formula
  desc "A simple CLI to-do list tool"
  homepage ""
  url "https://codeberg.org/StikyPiston/evoke/archive/251025.zip"
  sha256 "173cba9668c60de6bc4711435b39dfb9dc22e854ea2bf2f7fd2de4c616d6aa89"
  version "251025"
  license "MIT"
  
  depends_on "ruby"

  def install
    bin.install "evoke"
  end

  test do
    system "evoke"
  end
end
