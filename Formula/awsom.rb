class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.4/awsom-macos-amd64.tar.gz"
      sha256 "9559122582bbbdd0e286bd15764d8813a53b9ae044f51de64ad7a331b051397c"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.4/awsom-macos-arm64.tar.gz"
      sha256 "b5dc529adbe6caae9a4042b85c77124fe9d1207ef45e1f558c567d288791f96c"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.4/awsom-linux-amd64.tar.gz"
      sha256 "0ecbc80fd291c1ca98dfd0d408aac8b7918a03d67120deeff06f3e6b91812aa5"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.4.4/awsom-linux-arm64.tar.gz"
      sha256 "536f7e407408abe47b39aae274f715e5f93a14cad7ac4fae2a3d7d2783a1d274"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
