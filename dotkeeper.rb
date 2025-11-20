class Dotkeeper < Formula
  desc "A dotfile management/symlink farm tool. Successor to rancher."
  homepage ""
  url "https://codeberg.org/StikyPiston/dotkeeper/archive/201125a.zip"
  sha256 "55db80a60e2381fc13251a3caff22a0d851aa44e07c2d3c5b4a1a0f665181520"
  version "201125a"
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
