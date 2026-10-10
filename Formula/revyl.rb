class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.145"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.145/revyl-darwin-arm64"
      sha256 "939fae4e90ce4da4e918343abc1ce48a5cfc9e6f855a2b8bcbcdb0b630085a63"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.145/revyl-darwin-amd64"
      sha256 "9fcb3e57e2284b51ecdfd09cf3e2beefc6b587679aaab56cf9d089f9ff7fe67b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.145/revyl-linux-arm64"
      sha256 "d177cebfd9ffa2938bf5093fe2304fbd7165ae4b497cf01a57d591535cf5b183"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.145/revyl-linux-amd64"
      sha256 "f02dac092105bcb574283ec288ac84e410d49135d63d2ce6e7babae4243eabba"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
