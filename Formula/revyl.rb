class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.133"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.133/revyl-darwin-arm64"
      sha256 "14e2b736a9270c8bd590d1dd31e048666b5d4b74309ff7b1e9097f65f3560ab3"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.133/revyl-darwin-amd64"
      sha256 "0f258847f02b0b636ee2fdb35725ba39b82aad6007a6f5cb1e4ec027b4c90584"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.133/revyl-linux-arm64"
      sha256 "869b891c0cd29cbcbdd005335a6af9db0db91562b7f201f46487e77e1d53f9d8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.133/revyl-linux-amd64"
      sha256 "032c52c8ee9ae0ec9ba085e4e7391ac17638eccdc7624fd9ab01dc2e44be5665"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
