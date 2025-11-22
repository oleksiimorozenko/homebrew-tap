class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.7.0/awsom-macos-amd64.tar.gz"
      sha256 "ca1decda4acd06a1227a7094fc0e6220e887bfc7f11a4e282919c73b33be8ea8"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.7.0/awsom-macos-arm64.tar.gz"
      sha256 "ceb558e909aabf3a0962ec885778583ed05b06023802aea9f59d5329e2dfae49"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.7.0/awsom-linux-amd64.tar.gz"
      sha256 "2fe0ed0fe027600961310498f963df129e692310986d2a8ee34cf2524816bad7"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.7.0/awsom-linux-arm64.tar.gz"
      sha256 "6993629ccec297aa264e6cd882e0429b25424a3653e0ee68f2e0eec682c2856b"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
