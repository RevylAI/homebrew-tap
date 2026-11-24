class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.59"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.59/revyl-darwin-arm64"
      sha256 "71b7435f1a34f2ff042b4b4cd48e6844da98c972d26921323ea500997aa4a7f3"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.59/revyl-darwin-amd64"
      sha256 "ea26e28e74ad88d856707c567cd429d7ac74c5710191ea112d69b401576c38b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.59/revyl-linux-arm64"
      sha256 "f924892bbceceb7f7e48fed4f4c5dcbe8b1e104c6e28197a9ecc8cac4c4267ff"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.59/revyl-linux-amd64"
      sha256 "4e2d4306d02d1478ee9ac42a6c8447f3ae06642852dd59ecdf7ad136c4e3454b"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
