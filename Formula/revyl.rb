class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.50"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.50/revyl-darwin-arm64"
      sha256 "156f9fc6dd4c2404c1c3ea760d5d667125f50425e56bb66c9b92375d0638cbb1"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.50/revyl-darwin-amd64"
      sha256 "51337668a56750ccb1ad738cbc4079feaa1713361c86e3240c7ea7ac6eac14fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.50/revyl-linux-arm64"
      sha256 "df6099e98c4fc238b100925b78958776e15ef3e5a5e8644847d1ed206b04d77c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.50/revyl-linux-amd64"
      sha256 "87aa60b510b45ff7e623ea69fe461841dd535b7fe1d75093122d60ca466f0490"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
