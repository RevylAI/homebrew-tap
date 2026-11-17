class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.15/revyl-darwin-arm64"
      sha256 "26cba4464698d3411823b0a1c618b378f9bbfd447809b4d4055f929fafa6d1bc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.15/revyl-darwin-amd64"
      sha256 "35c5583570860d5c3289e376c94ffe6d3219fc69730b2a23da9894c5430e4214"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.15/revyl-linux-arm64"
      sha256 "dd6101b7df702a9cfe76fd402ad35e5d79aec66b59e505a922338e6d1c682782"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.15/revyl-linux-amd64"
      sha256 "62a6ae4f62a4232751b94301f92fefc5c8268555d8f63643e134f4f064dba613"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
