class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.23/revyl-darwin-arm64"
      sha256 "412ce80016fe97e5fe945167e979ab2387e565509e031ada014f47c43a3cc2ce"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.23/revyl-darwin-amd64"
      sha256 "af8b874a137a0e7f8902b424381ecec57163a5d955c094484827b52d11a88ed8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.23/revyl-linux-arm64"
      sha256 "9887cc8ef3b8b2270493be80036a376d934297259197c571363805fc14927ee0"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.23/revyl-linux-amd64"
      sha256 "6c6c5e9f27256b1bad493beed2832f783b76fc5695542a3edcba662c672484d9"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
