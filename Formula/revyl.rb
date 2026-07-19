class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.61"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.61/revyl-darwin-arm64"
      sha256 "ada5628868677b22987d676a7fa3d9baea950055c114e49fcedc71b3f895a996"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.61/revyl-darwin-amd64"
      sha256 "06477f8e0845d881532aec14ef95d63201319475c843ce8c8cfdaf112eb39fa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.61/revyl-linux-arm64"
      sha256 "7e87dc4d7e7c39a137a4097942837a16da3b76adeb9227690999ee67fce1a21f"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.61/revyl-linux-amd64"
      sha256 "e5f413a0fb705aad4a253a1f022ea9791aa3e37e75ed802259bfdb762f767fee"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
