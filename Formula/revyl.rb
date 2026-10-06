class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.137"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.137/revyl-darwin-arm64"
      sha256 "5a2108e333539f2c9022344bb0f056f6480e22a23ba076407b3615813adadf8a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.137/revyl-darwin-amd64"
      sha256 "6ee91359cd4b1cf728f6255e605b3894fbb714b6ca256bfda0eb4da35f1d3740"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.137/revyl-linux-arm64"
      sha256 "f7b653ca233dcd59005d16180d14d7f8df52a8c40dbf28c55e7ddbf2eb46c764"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.137/revyl-linux-amd64"
      sha256 "8e4e1dc9d574d237859fd1785d3250c235eb4ba11db93ab2a15b549d99dd6938"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
