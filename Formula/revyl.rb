class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.204"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.204/revyl-darwin-arm64"
      sha256 "407a8e2855ece1090e4561253fb02b8295b7fdbebdb95418762c42bf730281e7"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.204/revyl-darwin-amd64"
      sha256 "901db11757e10530f94ee392f84e0073d463768287fc281eb1297c360e7fb0b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.204/revyl-linux-arm64"
      sha256 "4773cd059f346c3ecf91c7a21b90df40e62547ec4a90d1c07fdacd1650953cd3"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.204/revyl-linux-amd64"
      sha256 "82e79ec0eb88c6be787ac1e7780288aadcb0fd03f57b8e90be88dd0e1f42fe06"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
