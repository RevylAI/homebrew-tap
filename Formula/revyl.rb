class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.43/revyl-darwin-arm64"
      sha256 "1ddcf64022e73abe133b6d273cfb8ebaa11f0c73ff70402303e6c98c58416264"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.43/revyl-darwin-amd64"
      sha256 "1fff676612318ee1d30862cbfbd3a2a4ded207fc46841ed4375d12407b4a4d30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.43/revyl-linux-arm64"
      sha256 "790d41a6aab2d2f7f1ecc91ccab1d2cd36ba8c31a466b93079b2793a2d54dafc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.43/revyl-linux-amd64"
      sha256 "7eca85c5b86cd07386de226ee69eba7fc7879572e89d95ef96b3a5d37d1a8d3e"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
