class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.201"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.201/revyl-darwin-arm64"
      sha256 "2c280723bce53a012b70ce02d4c8c0e3bc04927d448ed24960cc984ea1b71fc0"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.201/revyl-darwin-amd64"
      sha256 "11c982200910aa0f6abdde3ac31bec38d1554a926ac924e52c652bc25f8c5285"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.201/revyl-linux-arm64"
      sha256 "54ed60b26658326c9035da1e6f9658387374c4c14ccd1e4e0d690c1e7142b61c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.201/revyl-linux-amd64"
      sha256 "7d31287ade80c562cceb0c25f6ad9b87f31e8b4f51eb777dfd0c0dc484d79d66"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
