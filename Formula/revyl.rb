class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.17/revyl-darwin-arm64"
      sha256 "1597160ae0d93c6f8f6c39475de4279f422033738fd054685cdb39d6ce3e9669"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.17/revyl-darwin-amd64"
      sha256 "365a974ffc53ed869d60818522d881f5562ed9def09630922abcb793f0d1798a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.17/revyl-linux-arm64"
      sha256 "57f099eb3b90c4574aafff457575fd70ad3dcca0880b5c98a207053e711de85b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.17/revyl-linux-amd64"
      sha256 "7ee53baaa3f5cf49a8561043c28172c7f953232f4497d7ca3f8007018fae3e94"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
