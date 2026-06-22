class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.37/revyl-darwin-arm64"
      sha256 "220832b937b289fc74e53e0aeb293ed4064292ebf8a6fbe27e8842da7b43fc6d"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.37/revyl-darwin-amd64"
      sha256 "bdea6beeeb3eae727a38147bf57526b0094ad961dca5e620c7561245fa3ff347"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.37/revyl-linux-arm64"
      sha256 "7e91539da9918440a466775f6e18d951e673dd33994c15e234fe0bea55b550cc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.37/revyl-linux-amd64"
      sha256 "b96a4bc7760b4db1ef9904631c198af5a095f04424249377149fa004271c70bf"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
