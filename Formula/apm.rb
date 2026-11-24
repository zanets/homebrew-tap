class Apm < Formula
  desc "Agent package manager for Claude Code"
  homepage "https://github.com/zanets/apm"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-apple-darwin.tar.gz"
      sha256 "aeec81aa36acf77c779287d7c77a5b703f2dd1c6c8129b20ab6250156631ca36"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-apple-darwin.tar.gz"
      sha256 "d528695ede4a121d65d2a865af4285285567a947e426e0a81441754573ff965d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ad1c6f46e2e62314f701cb67306476a04b9adba2a70d1f9030b0db92b34a417"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fa89ac0b25d32aa5d361c41fe354aa12e5b226dbd45d13841e1f20aa7037134"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "Agent package manager", shell_output("#{bin}/apm --help")
  end
end
