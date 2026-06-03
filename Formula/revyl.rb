class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.30/revyl-darwin-arm64"
      sha256 "54a2a0ac525112ad7240eb39e80707203641d0d35cbf731284d4b3d7bcfa52b8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.30/revyl-darwin-amd64"
      sha256 "6b0548ee339bd1db54cf3f14bee98450163eb5332051dbaf3c0b8589fc5ea457"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.30/revyl-linux-arm64"
      sha256 "4a91cbf0af220654f0f87fe2947324005df526a6c152f9e7732852a6d98f7307"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.30/revyl-linux-amd64"
      sha256 "70a02d68cd558bdd61476d003e384c2ecd7225f59462ba0e78327c3ad2aa0e9c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
