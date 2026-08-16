class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.89"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.89/revyl-darwin-arm64"
      sha256 "2cca2bcffad1ea7543567ae32de8c87ee464b6b28d2b5d5bd299262cc7a9434b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.89/revyl-darwin-amd64"
      sha256 "79bf268ba211cc9e7aff854d31f00e03cab2f9bdbba67926e40146e10e5491e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.89/revyl-linux-arm64"
      sha256 "c48f5f7e2037a6c76d3dc421189b6369be1713723d911ab12cd0829c7ef47486"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.89/revyl-linux-amd64"
      sha256 "e78b2d427599a013556df7fb27fdafc09b8bc73901df1a13b5942d63168bb2e3"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
