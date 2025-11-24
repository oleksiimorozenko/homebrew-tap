class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.13.0/awsom-macos-amd64.tar.gz"
      sha256 "928466238551ed24d17fb42837596c15593971f1ca939d081c4fc3df389161a4"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.13.0/awsom-macos-arm64.tar.gz"
      sha256 "fde377260140509778d74c238a698edd7612fdb22f76122044e554159c2b8b4d"

      def install
        bin.install "awsom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.13.0/awsom-linux-amd64.tar.gz"
      sha256 "57d9aff3d3c805581f119691546446662dff2ee5c6e374f5d98d7dbe260badc4"

      def install
        bin.install "awsom"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.13.0/awsom-linux-arm64.tar.gz"
      sha256 "f497ead42a5a6c21097343282278f129077188f5ed3524a8caf007b0e7968f25"

      def install
        bin.install "awsom"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
