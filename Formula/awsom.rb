class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.11.0/awsom-macos-amd64.tar.gz"
      sha256 "7f3d6f58e99f66f39445f87ad96e7ee0d011f75a8cc219198b5b00d961cd284e"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.11.0/awsom-macos-arm64.tar.gz"
      sha256 "03c00898a5582cd3985b95249656f85733776859ac56d253add0faa226cd81f8"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.11.0/awsom-linux-amd64.tar.gz"
      sha256 "780850f377ee9ce4e813e8cbab00411c4f0bc55dbeb432a9655d4718eae3ea24"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.11.0/awsom-linux-arm64.tar.gz"
      sha256 "fda1cbd191b3b3e84a42bdb12c01fc302ca80c7a9d1e89ead84384f1ad858356"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
