class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.174"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.174/revyl-darwin-arm64"
      sha256 "802b159557782792aad11ad52670d378b2991075674d9bc71197542bacceea0d"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.174/revyl-darwin-amd64"
      sha256 "f4dda6288aaf78ff14d22b97616fd02507d4e30a35bd79fad1dbf1a0fcb6baa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.174/revyl-linux-arm64"
      sha256 "5c2cc9556399ccde66776ca9231057232132732c621021beba56e13e83603e05"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.174/revyl-linux-amd64"
      sha256 "61ee8d98aec970a0bd890b1f581e11a57c99b4674ef54b14f6a479371211508b"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
