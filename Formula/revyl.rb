class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.76"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.76/revyl-darwin-arm64"
      sha256 "f418848a444f02cee815b23029b7636d8b950f1890947d41efb3553588ed3d47"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.76/revyl-darwin-amd64"
      sha256 "b07e868aad55d69573060272e32e1f648eb2875d43d3cddbdf76688fb7ed3a88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.76/revyl-linux-arm64"
      sha256 "bb59be0ab50e3832735eed7f1b86bb91f2c150816f64526cce1595bceefa05e4"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.76/revyl-linux-amd64"
      sha256 "4533fe731c15a28fd8dc8752fc18c06e0d7381e0d70044fb42ad4e9fa8d7f489"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
