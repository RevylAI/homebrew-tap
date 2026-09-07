class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.109"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.109/revyl-darwin-arm64"
      sha256 "fd758009dbd6bcaad1eb38a1b2de0d26125ecfb098e15c6c8e6dc80893523303"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.109/revyl-darwin-amd64"
      sha256 "a708194f2f205831a8e2cb1f9d356de528401c329067d0fe8f78f678a1e5b754"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.109/revyl-linux-arm64"
      sha256 "69a64ca5d78a8e9aebdab9b988a4d903abb8b0e9b49c43f7bd9acf5ca1b03487"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.109/revyl-linux-amd64"
      sha256 "05c35ec6a349112748b3b6e096859b5c293085207460b016e05aee2c40841cd2"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
