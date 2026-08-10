class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.82"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.82/revyl-darwin-arm64"
      sha256 "192bba89def271bab4436a6de8d8b51d9123e2319db7a689335b578a7d8bd0de"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.82/revyl-darwin-amd64"
      sha256 "5611c6b2bccedc2b4f6721a87f2d08077e00f85c43338cbf14e28954bb8f429b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.82/revyl-linux-arm64"
      sha256 "ca04ca1af50f7369f74df60ca90963e8db702e9d1eac3754b017fe2754e20c02"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.82/revyl-linux-amd64"
      sha256 "86f5da1a23d172356b5a62c8d9f35e664789abc98237d36034a95f33d24a559c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
