class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.8.0/awsom-macos-amd64.tar.gz"
      sha256 "eb624eca567051f743d0736c41459b8f30e8dfe1ed5b33f36fcb02aa39f731c7"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.8.0/awsom-macos-arm64.tar.gz"
      sha256 "d4bb60c3eae37487f7b19f6b861895af70942f2c2f6ce1fd141ad9986ab12aa9"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.8.0/awsom-linux-amd64.tar.gz"
      sha256 "051de3b6242f3cb4f79a7e3abb440ccdd2bf1352331ffcfb2d5064357b2b4f0d"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.8.0/awsom-linux-arm64.tar.gz"
      sha256 "ecb29cc81083970186d39e99a45f13a2db95c54b0b818c8d74f1987c2f3dd157"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
