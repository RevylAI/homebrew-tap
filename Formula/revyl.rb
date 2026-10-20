class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.179"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.179/revyl-darwin-arm64"
      sha256 "7d0a32fb8561000b780a6f3dbf9dc902e563b2130783ba5663c9bfcc33b39c47"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.179/revyl-darwin-amd64"
      sha256 "50303434a0b46c907b20832b59b9b0709cccb8e3ddfcc7307637d177dfbe0fe1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.179/revyl-linux-arm64"
      sha256 "e628f442953446161d4d1248612427f3c8d31427273dfd815147a254d15f4cd1"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.179/revyl-linux-amd64"
      sha256 "16b949b1a2ebab0270be0ed43b7a2cac5d8992f233a1a3b98f5ce8e422e6505c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
