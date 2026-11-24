class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.66"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.66/revyl-darwin-arm64"
      sha256 "bc2a26ea0bd49eca408202998b2674d75ac2956b8f3f81c9cdedd421407da04d"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.66/revyl-darwin-amd64"
      sha256 "6b5b968faca678849494db5694c663030123d0a2325c18cf52ace2449c3c3eca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.66/revyl-linux-arm64"
      sha256 "41a3ae301e0225d1659c7d49360fb0071bb9040f51f0c22182cde086b9de0711"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.66/revyl-linux-amd64"
      sha256 "1ee1fb4cf0784fbba301a92e41e220bc902d5b2dcc0944b35ff3239d6402406b"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
