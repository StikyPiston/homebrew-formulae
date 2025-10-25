class Constitution < Formula
  desc "A simple productivity-tracking tool"
  homepage ""
  url "https://codeberg.org/StikyPiston/hocusfocus/archive/251025.zip"
  sha256 "6ddba66d9fab290cbd45ec44b3185d7da550476eac54fd8ca6f7bdc1473c0325"
  version "251025"
  license "MIT"
  
  depends_on "ruby"
  depends_on "gnuplot"

  def install
    system "gem install open3 colorize tty-prompt"
    bin.install "hocusfocus"
  end

  test do
    system "hocusfocus"
  end
end
