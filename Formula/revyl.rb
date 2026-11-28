class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.101"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.101/revyl-darwin-arm64"
      sha256 "af5491fa0d9b1c980904bf3adc6960817737381b24e629cd21251574652e8901"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.101/revyl-darwin-amd64"
      sha256 "d2dbacf6c42ef89a07ba048937c5f674706c0d3b7473b62369fb6768aab60d5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.101/revyl-linux-arm64"
      sha256 "fe3ebf7c87094e0d282529a57c920c31c607a553b9aaf7511580833630cc707e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.101/revyl-linux-amd64"
      sha256 "81e3a24263d012525788317d97b118005ac195a8f8d4591e5a405bec2dc2fbc1"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
