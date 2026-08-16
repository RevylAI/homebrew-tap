class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.88"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.88/revyl-darwin-arm64"
      sha256 "27140f6ed1961e865b186b5915117473609f9e2d73205eaa5d6ed6d10803fc46"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.88/revyl-darwin-amd64"
      sha256 "b2202e7b88903f2d03429b78c572437f4d3c18eb9b8419c49de7a3b043214ae4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.88/revyl-linux-arm64"
      sha256 "3ed04d2c423dbafe4a6363c5d3c2d0b2ccedaa421e29a45fd84679ad83617ea4"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.88/revyl-linux-amd64"
      sha256 "132b53f4d87471f250a9c519deb712c11fb30ce2d79575a6eb87978926d14661"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
