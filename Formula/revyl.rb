class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.8/revyl-darwin-arm64"
      sha256 "c889ca160c906a0572b0e6b34e45adf691a5fbcaf636a83a2d15464a3b5aa915"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.8/revyl-darwin-amd64"
      sha256 "fb6c432884256a5eaadc94c50f82037505f524d652ef68a348277b061d9724ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.8/revyl-linux-arm64"
      sha256 "8e9a760d96f8b199f1d82ab6f208551682d1ba765bc5987d893fd71fda95f881"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.8/revyl-linux-amd64"
      sha256 "453ea99e582cd90dff8d23aae8d4163d6400abe59c886481729022903cf25a0e"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
