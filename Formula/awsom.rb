class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.12.0/awsom-macos-amd64.tar.gz"
      sha256 "492cd208fe3a96a41397bf612c0c5aae58cbb059b9698ebeb76efae904eea056"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.12.0/awsom-macos-arm64.tar.gz"
      sha256 "fd187e83f99a603d05fbe99366fe6117c2235196ec26debb3eaf31dfdba69044"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.12.0/awsom-linux-amd64.tar.gz"
      sha256 "7730ffbad86b547129b06377b94b6d55366249d428fa484788cddd8f554cf5da"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.12.0/awsom-linux-arm64.tar.gz"
      sha256 "8e3f49362e579be80c0d332a93b6a4113aeac36b22996c1f57bea8a62a7589ad"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
