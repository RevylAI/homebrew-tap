class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.6/revyl-darwin-arm64"
      sha256 "eb1603bc5d56f1d1b45f7b31aa1ab09e45bddbaad1bf41e260ea36506ffc0bce"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.6/revyl-darwin-amd64"
      sha256 "ed59bdaf8a68fe20bd84c4ca2f2d16c73a4d5df8ed8c9626c6fed74d79daa9c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.6/revyl-linux-arm64"
      sha256 "631d3dcce87a8a9ccea28dcbba3a5195207dfd8b3f9cfa806d7abc5382dae8c9"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.6/revyl-linux-amd64"
      sha256 "820ea74c77fc593d22755bf7d49a0bda334ca0dcf222798c0cc9d341876da303"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
