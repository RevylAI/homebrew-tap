class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.43/revyl-darwin-arm64"
      sha256 "b11a2bb31da480b080eb4be7a92863b0db06bc5afff759910173f9ce9e8e3478"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.43/revyl-darwin-amd64"
      sha256 "5a69f96479873894ae3e9331014ebd161423049078eb4014a14d7944223dc2ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.43/revyl-linux-arm64"
      sha256 "025dac03f696b2ede61f17f939fe0ba49c0460ec6d1c975516b152d13dd8a80c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.43/revyl-linux-amd64"
      sha256 "bdecf4c3e8e0b77f72adf7468d3f17ef1c1777c8f48934621b53af0bbae82465"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
