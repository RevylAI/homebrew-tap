class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.80"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.80/revyl-darwin-arm64"
      sha256 "1d0b554575e57072334d5089564ddf648d9fe25069971c6b64f35aca6c55abd8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.80/revyl-darwin-amd64"
      sha256 "dac87640fa84f4e83a27754b7a8f5f52208ce6d253c8472e7ec2eca9b2b1af6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.80/revyl-linux-arm64"
      sha256 "978a83dea25eed6f3544439a7319fcf24bbc334a7ed0097084dc6911c891255e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.80/revyl-linux-amd64"
      sha256 "1e2ce4b885350fe5b12425fd2c0f1a30844c845d3edb17d22e8e1badccfee23a"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
