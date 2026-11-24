class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.63"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.63/revyl-darwin-arm64"
      sha256 "2c848dabb4385e8902f705bbb40f3745e7d828ec32626bd645ba9370f071e5e6"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.63/revyl-darwin-amd64"
      sha256 "fffe1588a7734189b12464392779e72957c1faf8d2efa8ce0f79fa2e9a7b3239"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.63/revyl-linux-arm64"
      sha256 "51174011f06278f7320a2906d75b4ce477c94b3cdcf41f5e57200a662532b47d"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.63/revyl-linux-amd64"
      sha256 "c03f6a87c0ce9ffb022880fb276e054633dd122f33b336b205ccbec2a6238f2f"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
