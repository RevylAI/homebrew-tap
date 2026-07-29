class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.71"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.71/revyl-darwin-arm64"
      sha256 "0be0aa70e9d9ac9a5c18236936bf96bdf50b682a7512d64a7664ab32aea607ef"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.71/revyl-darwin-amd64"
      sha256 "4f181b20fe13cc79fa1cc461d51477ef9de047643ad6fb5f0ac73dffaa5da3e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.71/revyl-linux-arm64"
      sha256 "68bbbb5b01b7b7cd8955fed71ed2ded99dcd445ad6f32a99f2ac7582a137ea37"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.71/revyl-linux-amd64"
      sha256 "85aac8935bd836af607af619bac4bf2b370f514091c4941b72d49abf32037727"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
