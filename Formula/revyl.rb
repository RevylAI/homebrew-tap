class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.71"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.71/revyl-darwin-arm64"
      sha256 "40e8bd72e973911fe96a41a71f6d08e2d25c7ab75d37660c5e706964341c27f4"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.71/revyl-darwin-amd64"
      sha256 "fdd8592a152fcef1c99da0d23bfe1124154b188481195da89ef360a67438297d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.71/revyl-linux-arm64"
      sha256 "42b1c0b8a7d63b9e118d30aed9ab8eb1cc8382478d201cc413aca30b1e37a604"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.71/revyl-linux-amd64"
      sha256 "abfe84d08d834fa8c0d73f24988c897edbe089fcf7994d47e08d53e22fcfe669"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
