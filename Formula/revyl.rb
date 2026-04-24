class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.16/revyl-darwin-arm64"
      sha256 "2f06315023ef81a0a7b59679667b7b59594b92f61e3bb8c88e032e801d020b8c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.16/revyl-darwin-amd64"
      sha256 "22d96d19cbad3f778284b858901f4b50d552bf1fe82ac4bffa1594d33cfb6e30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.16/revyl-linux-arm64"
      sha256 "9e69017aab11fb87ed31f10cb89ff78f9bc9fcdfa8da371189922e3c4fe3e7fa"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.16/revyl-linux-amd64"
      sha256 "94be0e499677efa4450ac7bbd564f66a7229c51c1e5f7673d0e1dfdadcbb813f"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
