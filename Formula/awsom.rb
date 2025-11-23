class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.12.0/awsom-macos-amd64.tar.gz"
      sha256 "26d7bc7c964f26ab1cb1a75487bbc2363b34910b6389ad8965b6b2a94416e78d"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.12.0/awsom-macos-arm64.tar.gz"
      sha256 "ac15df9ce399d4bbc44ce00a3e791a773a9bcb66dd3a04b1c31b5b1000045c1d"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.12.0/awsom-linux-amd64.tar.gz"
      sha256 "1dafc12ee896f3d2a8638a5c80ff8da6bb8a9fe3655a24eedb0bd0d20070e9d0"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.12.0/awsom-linux-arm64.tar.gz"
      sha256 "afaf201688fd4f30ed567254b58cabbaaa692b885bbb20f306b5f263581ab14c"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
