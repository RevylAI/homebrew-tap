class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.48/revyl-darwin-arm64"
      sha256 "114175d38865a0f5a29428fab5f3f9a78d668840fdc9d6cee33b3d3f9a9b65df"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.48/revyl-darwin-amd64"
      sha256 "26659923d869d3c2d59456964def8a394820fee1c25ecb35b6e0414337e49ea3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.48/revyl-linux-arm64"
      sha256 "dcb35d03923f6cd58f35c528e2258cc1928e03e08c5730f640228375fdb80b73"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.48/revyl-linux-amd64"
      sha256 "a837863c0c16706b70d09baba880b30d09749d7ffaf3fe2881d62b804f23ce16"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
