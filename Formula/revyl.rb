class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.31/revyl-darwin-arm64"
      sha256 "9b6bb46b8e95a1ea48a0a674d1d2b7fefafc8904ea5049cd1b1a3c0306364b05"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.31/revyl-darwin-amd64"
      sha256 "c0328c062b34644849f3f8bea0769582aca292514166c91380af2d5c47d1491b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.31/revyl-linux-arm64"
      sha256 "bac918be8fa71b9c5080c73aa40a4040f1512e4730d6442c1360cd1e1a972676"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.31/revyl-linux-amd64"
      sha256 "7eab97bb1190ed3535f3d04ec813e556673d343d1668e560fb61726baf9f4601"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
