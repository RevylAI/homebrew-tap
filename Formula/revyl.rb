class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.139"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.139/revyl-darwin-arm64"
      sha256 "70e70a6fceea6bda6a77bb2217b6da4a4c29116dff2cab767dab73e4d6cf820d"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.139/revyl-darwin-amd64"
      sha256 "2c48daed645b8a710a72a0747089117f3845966639ab36eb626dfa75486d7947"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.139/revyl-linux-arm64"
      sha256 "a352ae3435a483b4f1b644933fe90ac0b6e181074130e7c2e4d192a0ee01eea2"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.139/revyl-linux-amd64"
      sha256 "bce24f22041c155da1b90921bc7e34115135a0616e7641ca4d3fe8849079c3cb"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
