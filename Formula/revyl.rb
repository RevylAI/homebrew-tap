class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.40"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.40/revyl-darwin-arm64"
      sha256 "cab882b995123509f6ae791ec4090a38afb777a6a2de0c6e07c8a2c0fdd1848e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.40/revyl-darwin-amd64"
      sha256 "2eb09e38ec82e54d478775a675aea3102dbb3598adcb3dbfb0c65705d87d4209"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.40/revyl-linux-arm64"
      sha256 "41d1548005ba3d539949aae65c11d7288e4099c76761d3e8f7a536599ef0eaca"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.40/revyl-linux-amd64"
      sha256 "60189854ba96e9aa9cb15664c1b48c4f7f083d26fdbc820d7c0dcba2e7b74da3"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
