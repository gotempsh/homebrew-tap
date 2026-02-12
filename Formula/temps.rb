class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.0.2-beta5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.2-beta5/temps-darwin-arm64.tar.gz"
      sha256 "1a8c2046da745582ca96d64638aedaa8195f0c3fa9770f25acf9442a4fd709e1"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.0.2-beta5/temps-darwin-amd64.tar.gz"
      sha256 "ae1b6193b8aabc07f6c8badc5e05a5275708ae022c3bfb51a7381f0e030bb6b3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.2-beta5/temps-linux-amd64.tar.gz"
      sha256 "d876820b40de2f4d6910a20ffcc7a53d82dd484e01ea8c4a71f5642cf39a506c"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
