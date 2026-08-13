class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.85"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.85/revyl-darwin-arm64"
      sha256 "2703138cc4bb68d401df335b16d9b78be577452a3643a6ef4513e99ba38a0f48"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.85/revyl-darwin-amd64"
      sha256 "5e7ae8bfcc52d10abbc7d34620540dab41f803600d36f6568517e6d4e7e4d12c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.85/revyl-linux-arm64"
      sha256 "466187e0e0fdeb74cc3696916bedc27b1cc89ddb83545f8a726c4cba2bc232b0"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.85/revyl-linux-amd64"
      sha256 "76affc6e244b79c87a406a2be11100d3b3fdf2e5d8ecdf4e00d90071f1ca702f"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
