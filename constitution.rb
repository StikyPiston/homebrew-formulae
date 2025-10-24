class Constitution < Formula
  desc "A tool to declaratively manage your system"
  homepage ""
  url "https://codeberg.org/StikyPiston/Constitution/archive/241025.zip"
  sha256 "0993ae33faccfded159055a72c1d72cfb438506b31e3c250623f38ba846c6e53"
  version "241025"
  license "MIT"
  
  depends_on "ruby"

  def install
    system "gem install toml-rb"
    bin.install "infrared-copr"
    bin.install "constitution"
  end

  test do
    system "constitution"
  end
end
