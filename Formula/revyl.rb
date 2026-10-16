class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.160"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.160/revyl-darwin-arm64"
      sha256 "5eb053afd3a88407b613f555e01b49ad01f0fc3ad36edf05c2eff1d5d13ce5db"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.160/revyl-darwin-amd64"
      sha256 "1245bb435c9b580d092ac13d643b91d84aa35fb884fc26770d0de2b059cb936e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.160/revyl-linux-arm64"
      sha256 "eaf340bfedc3ad75a62a865c39beccb81218b8f3c4790b6d36612428c08f0d78"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.160/revyl-linux-amd64"
      sha256 "a3217c2f7cb517896e22bfd6f9225d91a0df5a68a3d413fd39d1178fcec4c34c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
