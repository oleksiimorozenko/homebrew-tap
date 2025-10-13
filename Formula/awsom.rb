class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.1/awsom-macos-amd64.tar.gz"
      sha256 "d7b6188ceb7119bb371401be5821f24f01f58039b465b89878a25a1798ee3e34"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.1/awsom-macos-arm64.tar.gz"
      sha256 "c64603f2719c00ebba35c9c8843333108458b966bbdf51be647292c8179e5c56"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.1/awsom-linux-amd64.tar.gz"
      sha256 "2cd454c22eccfefae9926bcf8f58d7c518c20703e1ad15ce5676e5a81eaf09db"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.1/awsom-linux-arm64.tar.gz"
      sha256 "a05c9e2a98ec7d4c8c05ef2a6f9e305cf9df90f34000b538017d75718b423367"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
