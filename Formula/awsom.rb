class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.6.0/awsom-macos-amd64.tar.gz"
      sha256 "c468a558a883caf9e89b41168b2741f762e8994ecc009f1919b2a0d49a61527c"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.6.0/awsom-macos-arm64.tar.gz"
      sha256 "6120cb85b61d3dc3263c20e1e9c1fdf2919dc68290ebec866a52733932f3b436"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.6.0/awsom-linux-amd64.tar.gz"
      sha256 "1fe355aae4a30caf0d20c183c1d8cdfc8664557edb0b76c47d3da25b5c5a6b45"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.6.0/awsom-linux-arm64.tar.gz"
      sha256 "9dc3a2a4559f1f48eb842c33ebcc0a2f29c82176541a3439e8dd5aaa0e51f50d"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
