class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.18/revyl-darwin-arm64"
      sha256 "93e64fe69d7f73c6220c9214bea650960676f225bbe1f6275ddf4698b371ff25"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.18/revyl-darwin-amd64"
      sha256 "fc746abf16523131cbf946075aaaaa71935828a5ac8fad953b88fa513e92e7c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.18/revyl-linux-arm64"
      sha256 "35f75ec23b41ebcc30f2d44e946ef30d3b207b27ac497b0ad2d855c9c1bb7792"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.18/revyl-linux-amd64"
      sha256 "2431bff66605a690f1e3411260e01f653644c9e54ecc303e7a8c3ef5bb77b1bc"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
