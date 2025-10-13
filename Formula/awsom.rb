class Awsom < Formula
  desc "k9s-like TUI for AWS SSO sessions"
  homepage "https://github.com/oleksiimorozenko/awsom"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.0/awsom-macos-arm64.tar.gz"
      sha256 "216fff1e38ddd125cdd95acc9832574a63a9d239ddb92b72ad19944629489395"
    else
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.0/awsom-macos-amd64.tar.gz"
      sha256 "048924bf8bb1da289e02c565cc2968f755198ab0d373a467efd6c86053c8086e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.0/awsom-linux-arm64.tar.gz"
      sha256 "dca3a4401047f3e412935d026b0c27cc9dbd557a688f9cabbecf940234174cbf"
    else
      url "https://github.com/oleksiimorozenko/awsom/releases/download/v0.2.0/awsom-linux-amd64.tar.gz"
      sha256 "72a3a837f609e9d529f444ff791033e5b8dd3bb9a87a22b30b5d4f8abb9eaac9"
    end
  end

  def install
    bin.install "awsom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsom --version")
  end
end
