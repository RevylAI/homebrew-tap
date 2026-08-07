class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.78"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.78/revyl-darwin-arm64"
      sha256 "ab8dc24bb617c34dd9e91a53341fdbfdda275d2b0f791cbcc7402db89f52036a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.78/revyl-darwin-amd64"
      sha256 "88eac3c2de4b0cbd94a253f431f87a737d01a620947c57e216ab92990292e86a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.78/revyl-linux-arm64"
      sha256 "9c09b2b3df58ac272baecb6704a652c0ef2c4b369cf56c39d9b605d47b4e239a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.78/revyl-linux-amd64"
      sha256 "50f8184a704f5f87a924cc028a7a685190a88843070fa08bff4617653d22b957"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
