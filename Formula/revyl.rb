class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.173"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.173/revyl-darwin-arm64"
      sha256 "758e9dc60d2a6601dc02841b8e1cafe2678b4b8b3c9f2635dfe8fabf349f15b1"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.173/revyl-darwin-amd64"
      sha256 "f6b672a863202c5dbfbc630780e13bff5b60d0a2e6e2888417ef6da20d4c1e3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.173/revyl-linux-arm64"
      sha256 "c86172f6c382d673b975208cf41b1bc356d894888267d9a9c6bc5d986cc4ad52"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.173/revyl-linux-amd64"
      sha256 "0120437d784c3cd69072829c615eac1a6a627850adb26ffd93cafb7603ac2db0"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
