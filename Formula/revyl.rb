class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.196"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.196/revyl-darwin-arm64"
      sha256 "00175eb7f23201b7f6901f481c59790405095a5caf2f296002b5049503a2d766"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.196/revyl-darwin-amd64"
      sha256 "9a5b9dc5f8c9daa92811cf31917062c1dfb6323694bd4c8b53d3a919278932b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.196/revyl-linux-arm64"
      sha256 "0139a54b7ea93a04c24785149e598ee216e68b992913ff56b28aa3b0e46b59b9"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.196/revyl-linux-amd64"
      sha256 "5c426c6ef307f41a59b0d1109594b1dd73017ef7dbde6fcdc6a151707c1349f8"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
