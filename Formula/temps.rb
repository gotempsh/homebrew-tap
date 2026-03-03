class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.5/temps-darwin-arm64.tar.gz"
      sha256 "81a793a241c615f01c2a51bbc4d6f07fb7ca7546e12b3954d8145cf21d55796d"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.0.5/temps-darwin-amd64.tar.gz"
      sha256 "cf6330208b7aecec0398237277042e48535472addca3115f1182c7f799faab4a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.5/temps-linux-amd64.tar.gz"
      sha256 "3bdeab6e83489c5b260a6e7f0c587d35c29e2dee835a1fb8243d66086068465b"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
