class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.2/awsom-macos-amd64.tar.gz"
      sha256 "e52c3a066fa6a29f3e0fb8189ad7fa00c0d6f3752a699177fc63355ca070e602"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.2/awsom-macos-arm64.tar.gz"
      sha256 "bdfa18e5922218ec336ad4a069e36c053651f15211f5f8e34f61239b94e45d91"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.2/awsom-linux-amd64.tar.gz"
      sha256 "03b8e97d75a2b4f313839c1204c831111a7a8d373d43e8ef2900a0901c006e38"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.2/awsom-linux-arm64.tar.gz"
      sha256 "097c4cb9e32eb7b24eb490afb386d5a3206bc79b9909a6f9a65fdc9a6fa64f2c"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
