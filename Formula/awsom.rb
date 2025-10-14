class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.0/awsom-macos-amd64.tar.gz"
      sha256 "8775410bcf8c18df2e22ab30aa43cd134861fd2c4e16523665ef4f8057954b7d"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.0/awsom-macos-arm64.tar.gz"
      sha256 "f8032b68f0dc202111f50f5914d2438d51b07c3cc06931a5515aef3722caa147"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.0/awsom-linux-amd64.tar.gz"
      sha256 "9fedce073a92291c9059352b49631aa1949315d4568ec19b12d275cbfb51420c"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.0/awsom-linux-arm64.tar.gz"
      sha256 "77e8f0d4e3bfe4f1411f5ca3e316227338b2945e8e5bf6252756cfb225089051"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
