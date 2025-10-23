class Constitution < Formula
  desc "A tool to declaratively manage your system"
  homepage ""
  url "https://codeberg.org/StikyPiston/Constitution/archive/231025b.zip"
  sha256 "13d5bedc422c250fb35e28a76ac61b24d98337d828197ee39f82313490fca4df"
  license "MIT"
  
  depends-on "ruby"

  def install
    system "gem install toml-rb"
    system "wget" "-P" "~/.local/bin" "https://codeberg.org/alternateved/dotfiles/raw/branch/main/scripts/.scripts/copr"
    bin.install "~/.local/bin/copr" "infrared-copr"
    bin.install "constitution",
  end

  test do
    system "constitution"
  end
end
