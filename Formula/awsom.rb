class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.10.0/awsom-macos-amd64.tar.gz"
      sha256 "0c265fba92acfd16ddc78805f904bb943f86d8661581ce4750809364aafdde42"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.10.0/awsom-macos-arm64.tar.gz"
      sha256 "f29667682563fd2bf023f443763f872de610d59a38424313fcdaf8a8edd9b904"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.10.0/awsom-linux-amd64.tar.gz"
      sha256 "8a09c05b41e4a020ac87a7417e4b9416a6f70b0fbcbc4ea465be7b47e670efa1"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.10.0/awsom-linux-arm64.tar.gz"
      sha256 "b48c2e98e4275bacda818651b98199a52a6341760b05952cfaefe55a79e0d30f"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
