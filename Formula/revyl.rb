class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.35/revyl-darwin-arm64"
      sha256 "67a1d40e26e89b62219d41c21d55595b8bc9d3660aa01ea6e0e7e7ae965130bc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.35/revyl-darwin-amd64"
      sha256 "27e9ec387caeebd85e8454226da5959b70a9e180086022b27ee5e40013b65779"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.35/revyl-linux-arm64"
      sha256 "4f6c7b8dcb601d1c1fa641eee411945cda2bcd3147f5b49dcd6b798db319977d"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.35/revyl-linux-amd64"
      sha256 "b34cb3fed676d3eb7be14b83c39693494b8c7d37d87c9bd222f42705d21e1743"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
