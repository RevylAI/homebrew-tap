class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.13/revyl-darwin-arm64"
      sha256 "72ffbcf165d4ac4c21f5fbbd56eee53b5bcf0be8beb214bf77c9be9cf89a0530"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.13/revyl-darwin-amd64"
      sha256 "c867f105833fca84bd16e2d643df51cee45533b5db1ecb429457cbaadc64b1f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.13/revyl-linux-arm64"
      sha256 "ff73f3aa6ff12d7e0885df7c261ff0abab3d2b99fbe48bbcb969a6f80c7710cc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.13/revyl-linux-amd64"
      sha256 "518047a89585c48ceb0a220dab381c6a62e94774165e92aecbc0ee4775bc852d"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
