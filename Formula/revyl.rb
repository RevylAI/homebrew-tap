class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.84"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.84/revyl-darwin-arm64"
      sha256 "d8923049ce7aada6c33b6ef2ddc62bd7b73786a7b800f5630c2e528ca0c769b9"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.84/revyl-darwin-amd64"
      sha256 "ad1135bfd9eee702fd551bf42db264bc75fab771d0c10b6c78e9bd2dded8cb84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.84/revyl-linux-arm64"
      sha256 "b2e6ed23750d16c4d528297c719efdc81d6ca4cd866beb44f21df00513031b3c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.84/revyl-linux-amd64"
      sha256 "b697e4ed1277e6c87a46af912c024364e34d9bb455b2f0c10326081bdfdaf4b0"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
