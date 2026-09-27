class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.130"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.130/revyl-darwin-arm64"
      sha256 "da256d5694738c446aadf8be733ef8f962037b9d0785bf90bc7b1f57815da462"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.130/revyl-darwin-amd64"
      sha256 "e09c1f0bb22987e2a28f298ecb083e766379d56f20d3fe880d7a40f43df5a1fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.130/revyl-linux-arm64"
      sha256 "603deaa1e190a0772b7693d7420cd415c782e296f07f1f30163f97bce591a27f"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.130/revyl-linux-amd64"
      sha256 "f87b94c6b217936f8d11f088ece21169d5deab9848b87b8d84e4a9cccc6312e2"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
