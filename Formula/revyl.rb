class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.140"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.140/revyl-darwin-arm64"
      sha256 "727e6f841e9540409c43b610cd39e1752cbe3001e6e3cee86c757406789360ca"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.140/revyl-darwin-amd64"
      sha256 "934e56e0f9e8405960a52133008b618512f8a4cba610b145a9560e0b93da70c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.140/revyl-linux-arm64"
      sha256 "e4b5c5d8fecd7ec128e76bb87eb9938b5665488629ac0ff1f045475b77b38ed8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.140/revyl-linux-amd64"
      sha256 "aada8ae7dfee23c1fcdd45b94ae705eeda40f351ba6c8279dbf1837b86a96f22"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
