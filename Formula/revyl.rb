class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v#{version}/revyl-darwin-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v#{version}/revyl-darwin-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v#{version}/revyl-linux-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v#{version}/revyl-linux-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
