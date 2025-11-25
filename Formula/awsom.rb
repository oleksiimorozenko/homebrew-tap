class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.14.0/awsom-macos-amd64.tar.gz"
      sha256 "1ddffb0c9f276c2925ba5522e02fc5e04cc0332dcbab0442e3eadfe192097347"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.14.0/awsom-macos-arm64.tar.gz"
      sha256 "b6a9042d32db861f5a3f45fe8774af2f2631cc64235406cba009462fbb2fa690"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.14.0/awsom-linux-amd64.tar.gz"
      sha256 "9c69fe4051755f131040b7d093824238f4653bbc9ed1a16ddcd1cd4f6bbf6eae"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.14.0/awsom-linux-arm64.tar.gz"
      sha256 "aba55868dad6c14f083c0eb856fdde199d1887221cccb83232a737b9f7c3c722"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
