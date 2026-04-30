class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.19/revyl-darwin-arm64"
      sha256 "22bd24ccbc10f33e0badf86e7d69240c30353b3a0c30b0211f114003ebff6eb8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.19/revyl-darwin-amd64"
      sha256 "98594ffcb3f559c0c9afd3d1cdc3d569a7eac6b7fb7a1306a8dda61511bdc651"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.19/revyl-linux-arm64"
      sha256 "382ab7af31848c2cdea514214e612f465856dc432b53d3a7bc02a78547e8c0dc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.19/revyl-linux-amd64"
      sha256 "524d9409b6f16df8c1bd7e3a9fbb6ae33a242897e9b3bcbf1c81ffd3337feb75"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
