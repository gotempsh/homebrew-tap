class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.0.2-beta4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.2-beta4/temps-darwin-arm64.tar.gz"
      sha256 "87c74bdb2e8a1767a30ea28627d59c4e850b6555baa34d05ddf8b7e8026f3a17"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.0.2-beta4/temps-darwin-amd64.tar.gz"
      sha256 "9eb070a1b486886b8fa38e51380bd1e1da521f5bdefefafc150939be874a4a81"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.2-beta4/temps-linux-amd64.tar.gz"
      sha256 "be196deaa1dac7f0b5100a29a27bccaa8ae14add288e2fdc1d9368e07d7f8c3a"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
