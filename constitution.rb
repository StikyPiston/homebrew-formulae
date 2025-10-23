class Constitution < Formula
  desc "A tool to declaratively manage your system"
  homepage ""
  url "https://codeberg.org/StikyPiston/Constitution/archive/231025.zip"
  sha256 "36d9716213d17403002ac7fb9108316e0e1ca9fa46729b7196d10acb4526670f"
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
