class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.148"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.148/revyl-darwin-arm64"
      sha256 "ffda9aa945e5da859e2d69b7a2b0be569151f82a6940b8e4bc3ae6e5e556251f"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.148/revyl-darwin-amd64"
      sha256 "80120ac6468b03e42ad07e9ed5e0de6514e8bebc99ed42a0d288ef0dafcca36d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.148/revyl-linux-arm64"
      sha256 "1272cbef4e92ab24367f8cbaa318e6105a9392f3aa89725b999fab86c416442e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.148/revyl-linux-amd64"
      sha256 "8fa79bada81102d5f31d6097e82e235705f610c516c04eece53a4190e99e1bc4"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
