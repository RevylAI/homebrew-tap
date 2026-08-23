class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.93"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.93/revyl-darwin-arm64"
      sha256 "7253b2ee369e05cb8ec7e65e9538ae4a05c870db1c825309f617427c877c44e8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.93/revyl-darwin-amd64"
      sha256 "2337764043f1c8edaa2e250ac37996c747a18658d2784239151f2a2e1f1bc001"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.93/revyl-linux-arm64"
      sha256 "0bb5988bf8042ee794293ef81f0b48898c4142f7fcd4ecb09c041b2f20739777"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.93/revyl-linux-amd64"
      sha256 "219a5f3b743ad75f761ab6476e48c0fa756523570d774340821dc2953b96d3d8"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
