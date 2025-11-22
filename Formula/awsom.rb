class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.8.1/awsom-macos-amd64.tar.gz"
      sha256 "1490211a4124f3f357860b779b254877c34736570df1bce5793f6bf0d29057d6"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.8.1/awsom-macos-arm64.tar.gz"
      sha256 "6e276d9fcc4fe6c12487e2565d8fab5c5127547f1807fb767ef908f27cec65d9"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.8.1/awsom-linux-amd64.tar.gz"
      sha256 "628dc74946d6e64ed934cdc24470baa2ee7b505d0bfca88af76c55fd69c67a44"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.8.1/awsom-linux-arm64.tar.gz"
      sha256 "854f40d2e37772db2116d405b66fba5c4949ba4b5c13dd5192692d6c75e4cc82"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
