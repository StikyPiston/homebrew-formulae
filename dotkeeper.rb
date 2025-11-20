class Dotkeeper < Formula
  desc "A dotfile management/symlink farm tool. Successor to rancher."
  homepage ""
  url "https://codeberg.org/StikyPiston/dotkeeper/archive/201125c.zip"
  sha256 "c92ffed5ddb9f12ccd2b4ea6380eb86090c96b7125f07db871c6db5f189c9709"
  version "201125c"
  license "MIT"
  
  depends_on "swift" => :build

  def install
    system "swift build --configuration release"
    bin.install ".build/release/dotkeeper"
  end

  test do
    system "dotkeeper"
  end
end
