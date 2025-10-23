class Constitution < Formula
  desc "A tool to declaratively manage your system"
  homepage ""
  url "https://codeberg.org/StikyPiston/Constitution/archive/231025c.zip"
  sha256 "3c71fe4f60c68421cd80b618880e8f2ce7b41b41ae424534f826a4e765a72b3f"
  version "231025c"
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
