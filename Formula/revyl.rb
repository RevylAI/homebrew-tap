class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.29/revyl-darwin-arm64"
      sha256 "759679f784478adf03ba56f0a7054f0d00b2d9ce58bf8e7c20116d26aa15553d"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.29/revyl-darwin-amd64"
      sha256 "b70584d51fbc1e973b3ee80611ca5ef14eb8fa292eb1ba478b4bd46e8b129800"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.29/revyl-linux-arm64"
      sha256 "c3fbe7d9d0385f1bea5045c1a58c4e3b6190dd6718e4e8368dd73a8e18453cfb"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.29/revyl-linux-amd64"
      sha256 "a854642cebf2d7584fb61c82b0ba0548c72d84e8e9cecfdffdae60d7df7608ad"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
