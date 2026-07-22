class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.63"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.63/revyl-darwin-arm64"
      sha256 "0ee20b497dab52df4bf7c2eb026c7fb6a294a8c9cccbb5af9bd14fc08893ba96"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.63/revyl-darwin-amd64"
      sha256 "d8198e0177dc44fbf4ed4b822450435cf5d30b3160e177bac6bbacbce95aede7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.63/revyl-linux-arm64"
      sha256 "85ed81d6a2c1ae09ee10ce51b64c4862b968d7bc33480918cee4416819d6a8b1"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.63/revyl-linux-amd64"
      sha256 "1718995792fcffeeb831a0563ed8da0b7ee26d1c4018f867b0b21d9ef335659c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
