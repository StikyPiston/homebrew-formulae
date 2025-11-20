class Dotkeeper < Formula
  desc "A dotfile management/symlink farm tool. Successor to rancher."
  homepage ""
  url "https://codeberg.org/StikyPiston/dotkeeper/archive/201125c-hf1.zip"
  sha256 "8cacd1dd27eb126b288bfc1e2122d9b18e48a374d839ca906ddbc99d4a3615ee"
  version "201125c-hf1"
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
