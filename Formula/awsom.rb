class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.7.1/awsom-macos-amd64.tar.gz"
      sha256 "2f0b74f2a8a8de636f04ed7eec73ede80550b5e8078657e555f996940100cd19"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.7.1/awsom-macos-arm64.tar.gz"
      sha256 "2f0b74f2a8a8de636f04ed7eec73ede80550b5e8078657e555f996940100cd19"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.7.1/awsom-linux-amd64.tar.gz"
      sha256 "2f0b74f2a8a8de636f04ed7eec73ede80550b5e8078657e555f996940100cd19"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.7.1/awsom-linux-arm64.tar.gz"
      sha256 "2f0b74f2a8a8de636f04ed7eec73ede80550b5e8078657e555f996940100cd19"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
