class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.232"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.232/revyl-darwin-arm64"
      sha256 "7588f13f9be47f05a87c38ca5f896a54165e41d4939f2143f865ed9b6cca752a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.232/revyl-darwin-amd64"
      sha256 "7fe9f13dcf20ea88e6c436afdbe9080c1882b5f55e7faa51e24bd7f93cce918d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.232/revyl-linux-arm64"
      sha256 "4635090427f5b0022498bc803397fe6aad34f41f7e7b3db555f3a65c7d922f01"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.232/revyl-linux-amd64"
      sha256 "72fb4da9eeb0f496cba291704748a71fd3ce2574f814c371c08624ee3a149807"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
