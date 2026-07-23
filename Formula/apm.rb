class Apm < Formula
  desc "Agent package manager for Claude Code"
  homepage "https://github.com/zanets/apm"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-apple-darwin.tar.gz"
      sha256 "5e028828c6da94e7a77c6f310b60913011174bdc2cc92f7a778fe1447ee5951f"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-apple-darwin.tar.gz"
      sha256 "e68b106ef4108c81b8352424bfd9f9eb9b7becc6e9bb7c3c51c9fde8333952bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7d153818fd041e5367a8148f20042cfba771521b17af7c815146b902d0c71c1"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "342ceef933990c04acca8cc1d1ecf21db3c22b25960d21008e7ae2d13822e887"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "Agent package manager", shell_output("#{bin}/apm --help")
  end
end
