class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.119"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.119/revyl-darwin-arm64"
      sha256 "455e2a8a247dfa808e5598a84668c097f7f5ec4efb8a00d1c2e3c3bac39287cc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.119/revyl-darwin-amd64"
      sha256 "566db0984911c58ea52f613a08efdbd23e97434959c01cef0ccbc3d201936924"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.119/revyl-linux-arm64"
      sha256 "2a5c8ce5b9fcff972782595063a77e6f72421f25a44c0c7f5650e521306f601f"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.119/revyl-linux-amd64"
      sha256 "ab9d4a3e6fb735fdced4fe6b59360ac81e860511bcc8320539854d94ae28363a"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
