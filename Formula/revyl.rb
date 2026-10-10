class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.146"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.146/revyl-darwin-arm64"
      sha256 "a0b9b23d665bc965d6961eb4cb91fc8abea7134f4931ecc208a607fed4737e42"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.146/revyl-darwin-amd64"
      sha256 "c3e4c23fd8b8e0cfc1a6f02df545e7e32f03c536d369e587405e9186e30f6d02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.146/revyl-linux-arm64"
      sha256 "adf2cf9f18b65e6304ead4dc0e048eba944a0d139e053e5738e1fbed869c024c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.146/revyl-linux-amd64"
      sha256 "c08a227bece64195692ba37ca55dd22bfeafde355fa8e201f933fa0c2087010e"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
