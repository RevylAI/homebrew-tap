class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.195"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.195/revyl-darwin-arm64"
      sha256 "06a97314c91817903caf2f9eedc191af9e39125cd73f1a1944de0389204bb3bc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.195/revyl-darwin-amd64"
      sha256 "24805cf73eecd015087fea665b5fd41379733e24b6b0c50bdcda8bff09f73f1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.195/revyl-linux-arm64"
      sha256 "01f9cd5e885a3e8e386ff6bb2fe3788c54d2f1298505a22c4a60dd9d658a2726"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.195/revyl-linux-amd64"
      sha256 "2e197f56ce31a349e1b54ffe52f5f9232b02241a496d9e1ce0fc74fbeb6dd6fc"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
