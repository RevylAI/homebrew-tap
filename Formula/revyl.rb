class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.178"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.178/revyl-darwin-arm64"
      sha256 "09688ca408ba8dea0c07c0e2d85676c81aa614b3d3525c011af62dc0877c7b76"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.178/revyl-darwin-amd64"
      sha256 "f632ec4c6db0b3fa664311302cf373a2cd74a2039d247c7a7c146861ab6d92d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.178/revyl-linux-arm64"
      sha256 "59d2b69e943ca441512f2f372d92e8c872034bacd30fa323cf72aeb8b47971e3"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.178/revyl-linux-amd64"
      sha256 "f440a6d14d23bc0dddbdcaa67533b7042624bd4c3ebe2a86fc840eb087296824"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
