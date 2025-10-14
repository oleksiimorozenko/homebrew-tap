class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.2/awsom-macos-amd64.tar.gz"
      sha256 "edf4ee2d7429e176e97dc2e811de36558971a0ee360ee4ce3fe34d09fef9d779"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.2/awsom-macos-arm64.tar.gz"
      sha256 "a2c76ae9468374e2399c6bbaf8d4164acb2414a666924c39b6d4b39fa51ff336"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.2/awsom-linux-amd64.tar.gz"
      sha256 "3b95f822513c94aa0786900fefd9061b327eec17784b1125026c6c7b55fa3ec9"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.2/awsom-linux-arm64.tar.gz"
      sha256 "b2a6e47208e5a578d93bb65da0c1d22c22015b228426147468a3b4ba7eebd123"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
