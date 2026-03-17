class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.11/revyl-darwin-arm64"
      sha256 "8251494140bcfb1e66594c0718114062f81101ad99082d457ce4884ce45a7db3"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.11/revyl-darwin-amd64"
      sha256 "6d761cb651d6336906d7d30644a623b05e452ca2311e36f2b6d157e8768cb080"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.11/revyl-linux-arm64"
      sha256 "73cbf2a4c1fc47ad5be091fde65f1b2e729cdf437a61237c0f479607fb7b975a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.11/revyl-linux-amd64"
      sha256 "15d33c1ccf8aeaadde7e4cb2454133c198bb2548a29ca3e282688b2fe48d0ebc"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
