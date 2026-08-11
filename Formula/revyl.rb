class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.83"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.83/revyl-darwin-arm64"
      sha256 "135d10df23ed779a0eae717707bfd2800b8295df4788178ffacca968a0206a92"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.83/revyl-darwin-amd64"
      sha256 "34b2191f434d514e4499a9467dd1fb9b2d99e821bb1ca2e849a38752c12832e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.83/revyl-linux-arm64"
      sha256 "f57383385d9701aec2c9b2e640ec616adca25a9653d0f14fe83c2e3b21a732f5"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.83/revyl-linux-amd64"
      sha256 "789fd6ec080160ff28f9f07a67a1c72eb8ac5b4b88e400955b11cb6c203cc1e8"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
