class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.182"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.182/revyl-darwin-arm64"
      sha256 "dab31a8302da8fd997d626bc31482d27f3d82c341d6cf257c311be2885d2a2f6"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.182/revyl-darwin-amd64"
      sha256 "7e62ed726fbac6225c4ed649994c25015969f1a1024bbfe33c04345281a21686"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.182/revyl-linux-arm64"
      sha256 "a4d1bfb1a386c9d13689be7173f222b330fd875fc84fd250cca84335c33fe2eb"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.182/revyl-linux-amd64"
      sha256 "d655060882971ae47871f3e8da7ac149da09b5f9afc70b20afa02ca836894f3d"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
