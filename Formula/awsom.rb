class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.5.0/awsom-macos-amd64.tar.gz"
      sha256 "6670a2194c7ff95a2116145cfe52dc5bf3f06573e0e3c3d873f982a5878f94d0"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.5.0/awsom-macos-arm64.tar.gz"
      sha256 "5260bcae67d42fd7da93097491daaf9ab0c034cd7642cffff6616f36961f232d"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.5.0/awsom-linux-amd64.tar.gz"
      sha256 "8d80a50ef68d69cbe53175f889cba86f91fc399ca154fc27875a4fd12e2f1753"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.5.0/awsom-linux-arm64.tar.gz"
      sha256 "015745ac0ebd5064e5ab71fe02fa15f1159143f783b083de0d833949959ae68c"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
