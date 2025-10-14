class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.1/awsom-macos-amd64.tar.gz"
      sha256 "613459c8cebd87213c6c0c741bf993a9817e2030ab66d55be268b8ac01551a42"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.1/awsom-macos-arm64.tar.gz"
      sha256 "2d06d04f1a9b2139423c2f2256e270d5f7eb3b6eaad1739636223d1ad39c07c9"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.1/awsom-linux-amd64.tar.gz"
      sha256 "72892204af0bc7a508cd71f6e83748636ae1e756313cfd62fb951f3848923ddf"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.1/awsom-linux-arm64.tar.gz"
      sha256 "abc951f6668a15049fe746a6c285071b411280aff13aec2ac12415d773747a78"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
