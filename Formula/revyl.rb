class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.144"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.144/revyl-darwin-arm64"
      sha256 "a75d3b593002e898b4afa6db84b56ca83a0bf048b8dec15edd4c83d2a8fec8cf"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.144/revyl-darwin-amd64"
      sha256 "85682b065724b09303a4615fdbb171f65f5b1d73fdca38bb884188359061b26f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.144/revyl-linux-arm64"
      sha256 "838dd5e555d3292a2da1d360706665a92e84efabab2c1fdb8908001db1c626c7"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.144/revyl-linux-amd64"
      sha256 "fa091c85f1c05cdec3e29ac904b139b55e92acc86837719eb2cf281d36d63730"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
