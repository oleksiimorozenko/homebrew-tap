class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.16.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.16.1/awsom-macos-amd64.tar.gz"
      sha256 "d9e0aa9a726657eed5ee513be80a3ddd6fa185564aeed95382b470e3025d66eb"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.16.1/awsom-macos-arm64.tar.gz"
      sha256 "250f955b96740fd02a3314f6ed9c5655d63fc5806b4e6663575f8bb3d60b362b"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.16.1/awsom-linux-amd64.tar.gz"
      sha256 "e2668eed698ec4ff22c8566e0358f75a4654ed3665a7aebb152ecf444706576d"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.16.1/awsom-linux-arm64.tar.gz"
      sha256 "8151b0ba02a6296978f9ab25465d2e551f92c3425050df2dfd8eb74ff1d6c786"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
