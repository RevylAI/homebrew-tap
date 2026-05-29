class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.28/revyl-darwin-arm64"
      sha256 "b248fca0891ba1c29691a6ac2d78de4e1c5690a9bb0f314c7f77a44028237286"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.28/revyl-darwin-amd64"
      sha256 "eae46840e2584860234d080e355eb2273a895e573dde97c6b6cbca8e0072032b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.28/revyl-linux-arm64"
      sha256 "9a5268ec55d9bf34f32027186e78d6cd066ed4a778362d3d60b1b940121b6991"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.28/revyl-linux-amd64"
      sha256 "973e88de39e8a8482e37cbbb8a02ff10418d0cbc723272985ab431cfe5126073"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
