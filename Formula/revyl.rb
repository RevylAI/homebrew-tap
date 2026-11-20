class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.34/revyl-darwin-arm64"
      sha256 "a078090be4ecc2388b713ff9b7ab9763ada6e85cf87c7c83651b8042a9a37f64"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.34/revyl-darwin-amd64"
      sha256 "e78936fd89040c15a5d39fc4ed3960499a41213c11ee033c68cc58c2be370cdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.34/revyl-linux-arm64"
      sha256 "74aaa4420955f89caf0faf4c51ff85d9c3268a81728ef3319b823c511077e2e4"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.34/revyl-linux-amd64"
      sha256 "8b2c64acb1421a75f440a44f0360ea309587f091f2b2e52b5c2f2721a2844358"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
