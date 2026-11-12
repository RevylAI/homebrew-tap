class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.4/revyl-darwin-arm64"
      sha256 "e71c0b468068a6a19a7b91e538fa39302843305207b27ef1a45a533d00534451"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.4/revyl-darwin-amd64"
      sha256 "8d0ec1e036ce723f02a5674487ad914b786b4573e5ccdaa7378a17492b7f5325"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.4/revyl-linux-arm64"
      sha256 "550473515375f9f1033fbb620f3c50c2b8b2e62d79355a310ddc9c78e32016ab"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.4/revyl-linux-amd64"
      sha256 "765a54f10743ae7eaf00e7a31fd1abf34f34154c57c9767fe3f7a9a3cde51ddf"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
