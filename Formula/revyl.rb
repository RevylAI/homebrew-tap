class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.124"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.124/revyl-darwin-arm64"
      sha256 "70bd9ad3f79e36bed1317044b267c243067b3d424e89d59182b0d6c39fda462c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.124/revyl-darwin-amd64"
      sha256 "2316694f21be6037e191b6ad5b2f3759baec1be50a7110810d6c15e0977e4e1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.124/revyl-linux-arm64"
      sha256 "1dc67a1de52daca0c9b29085ce118ee623488641dce228f426c3f1eebcd64805"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.124/revyl-linux-amd64"
      sha256 "2109b589020097f3778f3d36ef68200cd3435900224c91c1efe68276280a20c3"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
