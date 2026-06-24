class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.38/revyl-darwin-arm64"
      sha256 "93d00e55e38bb97873fd8cf87870cb64f80dca4134ecd38876ea42a39b055d7b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.38/revyl-darwin-amd64"
      sha256 "c1e77c440d0e6310b83f1dfd874dbadb0b66887a85de201712a77dd54a93a1e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.38/revyl-linux-arm64"
      sha256 "d7449992aa80bcac2f25ae9d83103eed32086d4b0662df504294d6acf6ab3382"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.38/revyl-linux-amd64"
      sha256 "8f4a09a18112dad22d06427d852e1424e628adea99c27d32e13e05fc0b8fcab3"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
