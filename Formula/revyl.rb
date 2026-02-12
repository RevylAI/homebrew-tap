class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.1/revyl-darwin-arm64"
      sha256 "ab601bbd2aa1240ae28b3ecc3df543ef382c242afbd82fc909bf4d973c370170"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.1/revyl-darwin-amd64"
      sha256 "38cfb49f8a7e2c5c342eb24975e45362dc281698cb905086a71091bf4bd79e9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.1/revyl-linux-arm64"
      sha256 "3e14752f62acaef73069362767fb3c636b353993004cab26a7cbbffecc4b53dc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.1/revyl-linux-amd64"
      sha256 "4e126dfd284785fda11862cda3bc48323aa14aff424df169dceaefeacc714cfb"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
