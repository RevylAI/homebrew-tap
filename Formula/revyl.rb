class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.193"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.193/revyl-darwin-arm64"
      sha256 "53807f3a626263f3030e722f2e41e12b1509bdfe71c32d64c0ecbbedbec63e14"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.193/revyl-darwin-amd64"
      sha256 "5cdfb7852a8eb35953366fecf77a885c9a1a909ac4753353791e990c376a3135"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.193/revyl-linux-arm64"
      sha256 "1eac89a50734b5a714a6e0e7da5fccdc275e0c4cc93fe9d8a5a198380a91af4f"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.193/revyl-linux-amd64"
      sha256 "ea443a174d3ae9b3822d3fe4502d77dde2af5290a99b29f9d1013ef5cb5f2aae"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
