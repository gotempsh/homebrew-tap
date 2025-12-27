class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.0.1-beta24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.1-beta24/temps-darwin-arm64.tar.gz"
      sha256 "54c55f11d618211f7d7ae70a3fb299c3f01e43abdd616c24b754fab9bc8c95cc"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.0.1-beta24/temps-darwin-amd64.tar.gz"
      sha256 "172c449a38020059cf5e3784d72c6ad2e163b127e9425b74ecb2ced4c892e1e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.1-beta24/temps-linux-amd64.tar.gz"
      sha256 "42110d3fdfde710a727cb7e9a5500a7ad1ab8765b57e768e1ed689b6f5e16718"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
