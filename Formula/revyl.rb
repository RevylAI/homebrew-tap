class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.94"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.94/revyl-darwin-arm64"
      sha256 "59a782a1258144e79c882cb9426aaf299559a4f36d9c26ffa312d937933c40ec"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.94/revyl-darwin-amd64"
      sha256 "bcaa356552140467db9622f86b2911af6ea797056bc7ba0b63eca7aab4ae1654"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.94/revyl-linux-arm64"
      sha256 "8764757f7249eed9b2a1193d3596c8789c08a4dba452ad7c9bb5a661b81a738c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.94/revyl-linux-amd64"
      sha256 "ddf8d0d014cd29e947ed074ea9834242ccfe5a5ea748e44a430bac264e5deea2"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
