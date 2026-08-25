class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.96"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.96/revyl-darwin-arm64"
      sha256 "b15bff62efecc3ad92c81ad5da9b4283ee31da2433be67085e0226ebb82e6b3a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.96/revyl-darwin-amd64"
      sha256 "9cbc5e0220483e0b09ae2c28dfac6df13a62744a51afb1bacb33010608e1e5fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.96/revyl-linux-arm64"
      sha256 "ccb3d19557a94d665a980385e0507663528d92addf878b03f3f103c33949032f"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.96/revyl-linux-amd64"
      sha256 "dd4d26e2d1eac5272272cfe479e1df82c376e87f5f363e6e2c1675d2d7d64bb9"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
