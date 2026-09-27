class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.129"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.129/revyl-darwin-arm64"
      sha256 "de885d12a4fbd1cf20fbc90ad165ae27434f2658363d73dc3036eb259ab353a0"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.129/revyl-darwin-amd64"
      sha256 "f130cd1dbc63c971375368c8a80007a412a38d9a51f7ac2c90da1eec54400b94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.129/revyl-linux-arm64"
      sha256 "5fcba704ddf43088d9c9f709aecae486dcb0099dcc462d4fa303fd9c8daa3989"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.129/revyl-linux-amd64"
      sha256 "e8bc2b620c9cf1077df3691148a2b2ead4c3c1c43c13786fa80bf0d8595f8ccd"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
