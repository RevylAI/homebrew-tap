class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.12/revyl-darwin-arm64"
      sha256 "6d606356f3bfaf16a889924685ee1546920263f4aa650c5787e16fe73ae55278"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.12/revyl-darwin-amd64"
      sha256 "3009d975851dffc0213b485ad41667d15aec7a617ec70f7d5e6d712928aaf83e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.12/revyl-linux-arm64"
      sha256 "ac0ce1d68c77dd4aa862310b61c6c423e894c88dcf765267bd3c4ad50e1150ef"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.12/revyl-linux-amd64"
      sha256 "5171aa35cd50740bc037f43d098d8de3270ca29ae5d7b8a2d871e2f57a1385af"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
