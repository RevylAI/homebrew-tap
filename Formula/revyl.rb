class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.33/revyl-darwin-arm64"
      sha256 "7d24a64b35df3434d5625b5a53ec8fcec5d28806972e6c3cb81f65d776a95749"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.33/revyl-darwin-amd64"
      sha256 "255f91ff090db4fa76d150f29c1f407ee228df960a15393f74765bc3430ea0a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.33/revyl-linux-arm64"
      sha256 "ae569316b7c0f70da2bf634c32dd90ba523cbc816db9ab2cc26ac7fba74cc64a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.33/revyl-linux-amd64"
      sha256 "7261b0f0bdad99759f98d35fe09db1ca3a55aace9ef3763c818d19154858935e"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
