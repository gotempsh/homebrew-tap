class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.8/temps-darwin-arm64.tar.gz"
      sha256 "02ab48ac462d999be6d9452cd134341768405645e0165d55f000e2ce3f3d9408"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.0.8/temps-darwin-amd64.tar.gz"
      sha256 "8deaad6746fc7e06ce6f610fd17ffd9ed78bd763f6caddb919c4da9587267cab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.8/temps-linux-amd64.tar.gz"
      sha256 "3a9945543a0c0b985af643c621cb9872baaf62d1be3a42a52d95ef93e44fded3"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
