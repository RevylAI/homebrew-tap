class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.2/revyl-darwin-arm64"
      sha256 "341ee5fe0a1ba5fc79c41a4ccd083f66c85a205ffd97f8420796ca995ee9bcec"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.2/revyl-darwin-amd64"
      sha256 "b473d6d79dba1be6660a153cb97fc5bd13e42b5678e55f08ee0b978dbd7aaeee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.2/revyl-linux-arm64"
      sha256 "484e6cf6f84bba2bd7a6e8006423d3f659e4b324c4c9724c4bf842543df0d8ae"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.2/revyl-linux-amd64"
      sha256 "374c9deb35096e343e79964ca9ad52d9664a7de10b72a4fd186094b84e0f54a1"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
