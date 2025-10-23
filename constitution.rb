class Constitution < Formula
  desc "A tool to declaratively manage your system"
  homepage ""
  url "https://codeberg.org/StikyPiston/Constitution/archive/231025.zip"
  sha256 "36d9716213d17403002ac7fb9108316e0e1ca9fa46729b7196d10acb4526670f"
  license "MIT"
  
  depends-on "ruby"

  def install
    system "gem install toml-rb"
    bin.install "constitution"
  end

  test do
    system "constitution"
  end
end
