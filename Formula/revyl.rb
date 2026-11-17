class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.18/revyl-darwin-arm64"
      sha256 "6b927ec1a8a6f145b50f129aaf79481671b75fa5add72109bbbfd20333299734"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.18/revyl-darwin-amd64"
      sha256 "b1dc86cfbb56ead6cc35bd03df46049bc3269936117f36ebce04e38037046df7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.18/revyl-linux-arm64"
      sha256 "ac8e861a4702474764eca10988b7297b7c75735778a1d4a05c95c89466843fac"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.18/revyl-linux-amd64"
      sha256 "e130e23c5e24cc999698e022da0e04b36f614f5aeedd510988314447e585510d"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
