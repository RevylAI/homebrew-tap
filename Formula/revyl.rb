class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.24/revyl-darwin-arm64"
      sha256 "f7fa6b3bf4bc0bb3c53f56783ad0bd98f54dce9396fd109645e711834fa51cce"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.24/revyl-darwin-amd64"
      sha256 "7f876b4faee2dd71a6d90e55abb5d02f79f71d3bf84de57305521f5a7ab68697"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.24/revyl-linux-arm64"
      sha256 "85f10686350dcc58c9baeca529fcf2a0305291c60778a4a6405108357c7ce54e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.24/revyl-linux-amd64"
      sha256 "10b45f4f310a84df5bcc1ab8986827725bd1c96d58ee164b3ccb083e14978d10"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
