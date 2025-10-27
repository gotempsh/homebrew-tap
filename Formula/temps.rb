class Temps < Formula
  desc "Temps - Temporary file and directory management tool"
  homepage "https://github.com/gotempsh/temps"
  version "0.0.1-beta9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.1-beta9/temps-darwin-arm64.tar.gz"
      sha256 "c45fe2a1b4d67d5cd63e70e10266478c81ea621a34044f28a3fe392cdb210017"
    else
      url "https://github.com/gotempsh/temps/releases/download/v0.0.1-beta9/temps-darwin-amd64.tar.gz"
      sha256 "477074cfa7806029136f3ba55ed619129c15907b3c9f76647d014950fee7fbc6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gotempsh/temps/releases/download/v0.0.1-beta9/temps-linux-amd64.tar.gz"
      sha256 "9184399971aba18481e7315c454db6268924d1e2bf34b01065905175757fc2ad"
    end
  end

  def install
    bin.install "temps"
  end

  test do
    system "#{bin}/temps", "--version"
  end
end
