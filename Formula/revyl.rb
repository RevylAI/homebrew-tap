class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.27/revyl-darwin-arm64"
      sha256 "96e20b13e1ec8efc231c1ffea08d7c19d62cc49b9820775744169aa25c399369"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.27/revyl-darwin-amd64"
      sha256 "92f8e2b9cb2feea12cbf3d1563821c35a68ce13b0830fe7191b66ec4c342b0f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.27/revyl-linux-arm64"
      sha256 "5795017385359f9891c9beb6cfbf1c1e5dcff7a9df0090773c9c5e164d2a758f"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.27/revyl-linux-amd64"
      sha256 "31d003c09b6b2eba2a53c841cecf7d6b5b07fb6fd48b4407e9252557184b1c2b"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
