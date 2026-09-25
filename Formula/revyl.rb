class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.127"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.127/revyl-darwin-arm64"
      sha256 "da920ed42fa99d7f4fe386d7f7a4451d1bc67cb19fcd0754fadcf74bfa25169c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.127/revyl-darwin-amd64"
      sha256 "20debc38905dbb14770f7546ccdb25b1bac95ee95a19175e147296b8cb40ab98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.127/revyl-linux-arm64"
      sha256 "0d09e3d2d3fa8929064103f835955d564417a4af2638baafaaf6594865bf90a9"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.127/revyl-linux-amd64"
      sha256 "b35ac64181e32ef73dd6e540cd403d284b4c69219f3529b9d9fe8cc4675add44"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
