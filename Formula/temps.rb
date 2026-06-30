class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.1.0-beta.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.39/temps-darwin-arm64.tar.gz"
      sha256 "d59901b87e4760f50024c697420ec04ce173bc55c11a41ba3744c1b00791be36"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.39/temps-darwin-amd64.tar.gz"
      sha256 "4b685ff96dcdc18915551b48f4a3bb28aa4ad4d8c1657087a416ce47f5db95ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.39/temps-linux-amd64.tar.gz"
      sha256 "1e060d5636681d18c19d868f6a649a667b42f2af680c112c73cf1c135fd7474f"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
