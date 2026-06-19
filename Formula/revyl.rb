class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.36"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.36/revyl-darwin-arm64"
      sha256 "8146b42e351a06c9cda3efca52e9c1f956a38187552346cf4a384751770994e6"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.36/revyl-darwin-amd64"
      sha256 "808403e2116de34bacc8c18e730c5e4d0d0327481449bd19d97574b5bab1147c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.36/revyl-linux-arm64"
      sha256 "453560645b80635a7f2240d9fb5e2c806197d5f1f1cc929695087705f01f2fa4"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.36/revyl-linux-amd64"
      sha256 "35fa411220e5bf39f3a4cabc6e6e4ad83ec3be6ef4e966c88ed7eb2e6bdcc767"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
