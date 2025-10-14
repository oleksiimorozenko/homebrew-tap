class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.3/awsom-macos-amd64.tar.gz"
      sha256 "98c7ddf49b17c4e5e9410c6c5ab651a72ef5153f56ef8035c41b5e5db1507e7b"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.3/awsom-macos-arm64.tar.gz"
      sha256 "deb7153ce66bca808b5be8671a330c3f44966c6afe4d3abe19fad94c99559b60"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.3/awsom-linux-amd64.tar.gz"
      sha256 "146ab97a04bc4c81d02c9fd6340a08a5bb1fa6deec96434d037b1f1419ecb1db"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.3/awsom-linux-arm64.tar.gz"
      sha256 "c8631e9bea2fbb291c4a1c7104be50f5097bb95224443857ec87428b5f5218da"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
