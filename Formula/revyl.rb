class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.202"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.202/revyl-darwin-arm64"
      sha256 "bacb6dde3c7b5bb1bed101ba341919306405371cc0907134ee8a8c80587448d8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.202/revyl-darwin-amd64"
      sha256 "eada23176fa2b8f1642a4d6edbdd647d2c8898ca95df12fb9cdf8b694b7f8b8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.202/revyl-linux-arm64"
      sha256 "4ff2b73414e37b42a630142385ed330d9c060a76a097e4b9466e883ca2eea918"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.202/revyl-linux-amd64"
      sha256 "da7f2cfb10abf71cc97766989d8f0b8e9beed1af075d06d15bb844f1aeb7c995"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
