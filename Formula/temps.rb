class Temps < Formula
  desc "Temps - Modern deployment platform for web applications"
  homepage "https://github.com/gotempsh/temps"
  version "0.1.0-beta.57"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.57/temps-darwin-arm64.tar.gz"
      sha256 "5b2b21ac28e47f14e598e71d8822480072092f36881e4c0972d30e0cd9efbb8a"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.57/temps-darwin-amd64.tar.gz"
      sha256 "0458d48d0937da8b5f8de946961a845a4ce0e558f8706bb2171a072bdecfd257"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.57/temps-linux-arm64.tar.gz"
      sha256 "672ffe36dfc9d6487cd0d785fc0da9f31c9d47e0a574e0b073888d75ca9debab"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.1.0-beta.57/temps-linux-amd64.tar.gz"
      sha256 "c350d60f468c7636fd813c8244d36da11286efe9c55e4437ff5b3d89fdd43624"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
