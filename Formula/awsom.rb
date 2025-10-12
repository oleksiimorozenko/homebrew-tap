class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.1.0/awsom-macos-arm64.tar.gz"
      sha256 "14c660a61d530c4d35e097f8c27b8f4807975b9675daa9a29221a8fe88c74eca"
    else
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.1.0/awsom-macos-amd64.tar.gz"
      sha256 "888985a278d18e7f7855182cbbb1c7922f127313bae79ae06204e7d5ce324de2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.1.0/awsom-linux-arm64.tar.gz"
      sha256 "c799b290580ae51176205569a73af94b20613d02f4eb72bf02af338327e2d1ad"
    else
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.1.0/awsom-linux-amd64.tar.gz"
      sha256 "59c09290456c57f43f1c8c8f6cd72ed5dc1e2f903c65339502dab202287889cb"
    end
  end

  def install
    bin.install "awsom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
