class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.4/temps-darwin-arm64.tar.gz"
      sha256 "95ee0f7a1e4174853b6dffcb4afbd71073fa34b73dde2e6764431ae62000f956"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.0.4/temps-darwin-amd64.tar.gz"
      sha256 "3ce4b67311cf8c0b7f4ac3141dffafdd1e45b28c66b280ad5ada214b457dfc65"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.4/temps-linux-amd64.tar.gz"
      sha256 "bf1b422eb68eb479349d244aa0e2f4aaa3c3689427116e22f5caa03d97230871"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
