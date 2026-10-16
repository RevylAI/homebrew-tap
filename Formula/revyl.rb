class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.167"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.167/revyl-darwin-arm64"
      sha256 "1c3b465e5af737c7ab30f6e3c3a59ec12995e8461eda4c93bfb82753c524ec32"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.167/revyl-darwin-amd64"
      sha256 "8bce6c904a51bb9467e3c29d35521cff79152410a574d659185bd659c09c6de3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.167/revyl-linux-arm64"
      sha256 "c284bc80242dd2a586e214988432b1b43d5bb82dc88b5f2f6157892c32039406"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.167/revyl-linux-amd64"
      sha256 "379c12087c68f3dd7d65de587e62311bf26ff46a140319966dd26569fa3bd875"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
