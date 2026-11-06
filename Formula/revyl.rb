class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.215"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.215/revyl-darwin-arm64"
      sha256 "f915297fa2636b809f0e606e3a6faeb91c5c31ba72590bfe211768e224dfe9da"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.215/revyl-darwin-amd64"
      sha256 "5ff1f70d16b06043091223e69d51bab1891a146fb440df40ce4aad9df1f4fb00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.215/revyl-linux-arm64"
      sha256 "1793dbbdda9997eaeeb77514f74617415b6252fa47d1a499d5df91cac27b07d1"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.215/revyl-linux-amd64"
      sha256 "cb8b2949146798f80315a734fd6b4e39ffa67b6ad8002a3f9f0db7413c298738"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
