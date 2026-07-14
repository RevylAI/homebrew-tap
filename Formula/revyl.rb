class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.51"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.51/revyl-darwin-arm64"
      sha256 "f0c565d28d9e7f52e50f9015878a4a6defda86ca89b0853951439439ded8e755"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.51/revyl-darwin-amd64"
      sha256 "67adf14c5353f7f0858967a7fcad39930cc38ff466ef599ff0cc7f11dcbbe428"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.51/revyl-linux-arm64"
      sha256 "393dccf292893e99fdd797fbb03beced5549086b0b7d559eef9cde45591327c8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.51/revyl-linux-amd64"
      sha256 "66cf8f3fcd80269adcff764036c9c5800f7e8c1aa0f8a93c80660f2b0c4fe29f"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
