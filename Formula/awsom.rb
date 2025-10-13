class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.3.0/awsom-macos-amd64.tar.gz"
      sha256 "8ea1ebd05cf3b9188f5b2ef9b13d54dc3a078a10b3c87c8cf5e2f3d6aa140684"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.3.0/awsom-macos-arm64.tar.gz"
      sha256 "c4fff745b46224c08a10260a02d47c9fe884856a5de6597227cd4e6001cbbffd"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.3.0/awsom-linux-amd64.tar.gz"
      sha256 "c3ccd3fc7e9e577f5e98b5cd1c39a981133f5e0df70a299d694d32a5866d1c95"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.3.0/awsom-linux-arm64.tar.gz"
      sha256 "087c7b7551a3eadb70966927a85e28bab9376790c626fc1d183289ed111143b3"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
