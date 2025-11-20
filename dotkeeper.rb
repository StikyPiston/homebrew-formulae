class Dotkeeper < Formula
  desc "A dotfile management/symlink farm tool. Successor to rancher."
  homepage ""
  url "https://codeberg.org/StikyPiston/dotkeeper/archive/201125b.zip"
  sha256 "db5fd57ea754c1d6a6d1937c85356fa9ff515642ad9351dc16b133d28fd071ab"
  version "201125b"
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
