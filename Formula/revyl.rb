class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.10/revyl-darwin-arm64"
      sha256 "261d82ba3243818af5b2018314dc625bd08dca397e46a5241f9dd10846f8ed1c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.10/revyl-darwin-amd64"
      sha256 "44ba376e9cde30613f16d13f85daf151d29b37f32dce22db8c687e2f13349c9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.10/revyl-linux-arm64"
      sha256 "e4fe1aa1ebf25c134a8026a2a13564370307fe7c7c826371e713ab54a1ed4dbd"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.10/revyl-linux-amd64"
      sha256 "713a4b744d68a4cb957a749497cfc5bf5b52d56e574221ee0be16727ab3e0d7b"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
