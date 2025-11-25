class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.15.0/awsom-macos-amd64.tar.gz"
      sha256 "31c90a99e9a5f11c5d5ec41ab913e49c44ff9b5f297dbc31225bde262af1b680"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.15.0/awsom-macos-arm64.tar.gz"
      sha256 "a2fea23518b701c53f8e0ce2d0454327863263978e4d4a7692cd76fde786913c"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.15.0/awsom-linux-amd64.tar.gz"
      sha256 "2485bc4f26e71f59009c5bd5fa28e84ffc0e79f16382707559eb0f75c39d4837"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.15.0/awsom-linux-arm64.tar.gz"
      sha256 "b8bf5674ba1e745e2247033c7fcee6db68a6c047ce88adc47f551ae4be96af16"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
