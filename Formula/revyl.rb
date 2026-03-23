class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.14/revyl-darwin-arm64"
      sha256 "15cb7de0820575e114b2459825454c7763c7d04daf10442bf2ce61c1aa372f18"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.14/revyl-darwin-amd64"
      sha256 "3bd5ab57260914371e5ca0fb012d6a841b22330b4cdb49bdc432c935bc3278a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.14/revyl-linux-arm64"
      sha256 "3318180deca2758fdd7ac030a30f11f4b319d2367e0a490f6491acd305444e14"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.14/revyl-linux-amd64"
      sha256 "9b8f806ab85a33c1a4a39c44fdf7d4bbebf6f2e55cc74bbaced3ac8daf297452"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
