class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.188"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.188/revyl-darwin-arm64"
      sha256 "1af5e55c23f79005698ba88f1ed55936c2cc9bbbdd48352964a71b39ad1d786b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.188/revyl-darwin-amd64"
      sha256 "1ab57586f5a8fdf84b8802365a2ca59843d9921a050eb08af6548f53b565d215"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.188/revyl-linux-arm64"
      sha256 "a955b4b38d65eeccf452f73cb27c988c64e5a3b1f5b8e1540ca100dfb64c790b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.188/revyl-linux-amd64"
      sha256 "a749108c9ccba641074a27a87961ee5660b0b491d5ce11d1512eaacb1fc8aac4"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
