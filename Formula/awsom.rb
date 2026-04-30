class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.17.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.17.1/awsom-macos-amd64.tar.gz"
      sha256 "3403f7f12515351e67da6c7af67a3e9ae51536c1126481f081bb30371847f495"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.17.1/awsom-macos-arm64.tar.gz"
      sha256 "7325436f6481c894caec216c78cec18c93d17bfd2dcbbb12d1e9581a8fa700c4"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.17.1/awsom-linux-amd64.tar.gz"
      sha256 "40d04fdd5337e31ad6ebe5d4426925335ab8d0e992b28f52b66f217d21014394"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.17.1/awsom-linux-arm64.tar.gz"
      sha256 "aee8b0ce78a736354ad407f6c59c38e9f0cbe3cdf789961ca13d4602f9948f7e"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
