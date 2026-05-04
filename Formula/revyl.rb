class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.21/revyl-darwin-arm64"
      sha256 "6fac30c9616e1670eab21c807758623a5c7f0829f6d0612f561d5c9baf8fed8c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.21/revyl-darwin-amd64"
      sha256 "427984c71e2ffb73b55386269c50a454e53a9c0d1b382a10a261d6c76cfe92ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.21/revyl-linux-arm64"
      sha256 "c2827552e2d5ada32dbacd16905cb0692b38dfb6a3fadc85c5a690373d0590c5"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.21/revyl-linux-amd64"
      sha256 "dab64a98d765d08f28ba6f3e2ad7466ba6a19d55833e1543c833312b1485a89d"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
