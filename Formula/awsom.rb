class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.9.0/awsom-macos-amd64.tar.gz"
      sha256 "7f8b387084da6fe4817906fb35d530b4a63c6bba5a330ccaffa403bd27fdfb52"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.9.0/awsom-macos-arm64.tar.gz"
      sha256 "ca44a7845ecf2ad268417c78707bebc554b355d867f7a7be8455912ee8c3ca0f"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.9.0/awsom-linux-amd64.tar.gz"
      sha256 "fee69934ddac4ab542ce4df19f4bf422d9e07926dafa8108a915ba4ce0d5d2e3"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.9.0/awsom-linux-arm64.tar.gz"
      sha256 "54808ed9229ff8dad3397f5bbb1ac274f2ee6420ed08bc4b2f221b6b6b1fdd75"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
