class Rancher < Formula
  desc "A dotfile management/symlink farm tool"
  homepage "https://codeberg.org/StikyPiston/rancher"
  url "https://codeberg.org/StikyPiston/rancher/archive/231025.zip"
  sha256 "b8852e435e468555035d4d78b7a29ac42ec61ddbdf264f43a57fca460745e932"
  license "MIT"

  depends_on "ruby"

  def install
    bin.install "rancher.rb" => "rancher" 
    bin.install "rancherfetch.sh" => "rancherfetch"
  end

  test do
    system "rancher"
  end
end
