class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.138"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.138/revyl-darwin-arm64"
      sha256 "51cef0a68160e5f34555d4df9dbb48f087f17509a577955e0c5c1a3a7a417e3a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.138/revyl-darwin-amd64"
      sha256 "34def7387543be14e182b52bd66b80b5de9cbb7d8f68f80bc3c8833b48559e2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.138/revyl-linux-arm64"
      sha256 "51ee05f41199547c3080c1da440247c3e51781dadb38778898771fdf9b38a5b1"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.138/revyl-linux-amd64"
      sha256 "2d83bbd9bd7fedca461fccf2201c67e25ffc09c37c0973a1a90f12efb7ec4235"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
