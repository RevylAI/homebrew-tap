class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.15/revyl-darwin-arm64"
      sha256 "11b0ab08ec1787b2aeb0ca64fddca38eb98d06f360f70f6939b3dd7265d58ce8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.15/revyl-darwin-amd64"
      sha256 "ad63ad3ea88c6d77b4e41133311d252936856aacd7a15a8937f26a88bd79529d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.15/revyl-linux-arm64"
      sha256 "333c805d260d88e3fc35f18663225c6cc80d46a243041404e10608c562f14df2"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.15/revyl-linux-amd64"
      sha256 "6a9ec021505bd2870f010080a68a345a9d6824e27271ff74d53ad351063085ea"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
