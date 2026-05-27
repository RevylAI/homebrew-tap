class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.27/revyl-darwin-arm64"
      sha256 "a01e5056da12a5fcb9b3da03e234f52cc6d7bb4e679681a7d27e3673bda9d1bd"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.27/revyl-darwin-amd64"
      sha256 "a895b5043d98e1380ec670c40ce6af6bb6bf4f391eeffbe179b27d718225668b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.27/revyl-linux-arm64"
      sha256 "47cd14f6640c7cfaf06d436d6cc148bfb54582b538df33d58c998e30f1c8ef53"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.27/revyl-linux-amd64"
      sha256 "7bfae0cdc8cef6361b80c9e7954b88bcb94a2cefda05702bbf7c4607993b500f"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
