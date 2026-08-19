class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.92"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.92/revyl-darwin-arm64"
      sha256 "2b5c6460ebfa864a0097c91bc91b4f0fc28087b27bd1f96bf133ffc7a926b88e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.92/revyl-darwin-amd64"
      sha256 "7cf10372ca96b81e7edeafd9196af9db37b2d9797514be3bbcc0c744d3416581"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.92/revyl-linux-arm64"
      sha256 "fe87a8eb43d4965c145a22cf8cf13d0d878904d98645e39fa1f4416c468a829f"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.92/revyl-linux-amd64"
      sha256 "65001aeaea02b8b17a9d76c3a001a77c804f5084a676d3af8f6db7a432b0adf9"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
