class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.16.0/awsom-macos-amd64.tar.gz"
      sha256 "e260d17c056c5ce6ae61f90255745fc6d2f7fad8c676a1b10d73324245e63aa5"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.16.0/awsom-macos-arm64.tar.gz"
      sha256 "5c0c8a43f879653c0ccae10535b85f4a09a1d4669e49761a5d77c4246f1b59c9"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.16.0/awsom-linux-amd64.tar.gz"
      sha256 "0293db44ac3c5518dbab0ae840c14f1393aaffd92009d26144bb52a872f1c195"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.16.0/awsom-linux-arm64.tar.gz"
      sha256 "b74226ab4194793912feaa21c131fa96bd9e434813eb7427a6655100fbb55c2a"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
