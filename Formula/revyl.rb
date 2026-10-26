class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.192"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.192/revyl-darwin-arm64"
      sha256 "580130b67e78e5ad1af92f9e6c5a0384fdf83789b42ecbf2dd5e8547f949ab65"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.192/revyl-darwin-amd64"
      sha256 "6eb15641b2e1ae16dc8b69941d5a07f6ae5ba90462c75a34cea0a701731637cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.192/revyl-linux-arm64"
      sha256 "703b7fceac1160a94ac183c08fd15312186a36b487c6d4c95ab81d469d1cc197"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.192/revyl-linux-amd64"
      sha256 "fca8727caba806b7df26b767f9d5e77591456d746905f59527135c992c9fe15b"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
