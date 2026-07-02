class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.1.0-beta.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.41/temps-darwin-arm64.tar.gz"
      sha256 "8a5cc791bfb3c17eb2b8b9506fe8f08237f7c5ebe582958927574ddebadcbc30"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.41/temps-darwin-amd64.tar.gz"
      sha256 "d9ff40a945e6e676179ddfdd30bc0514f9f016fd0bd724e08d226014d2edeac7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.41/temps-linux-amd64.tar.gz"
      sha256 "15849094a8823df3b45edba7774ca96768ba1ad50816016a21d1c0702636c680"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
