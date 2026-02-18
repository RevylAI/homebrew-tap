class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.3/revyl-darwin-arm64"
      sha256 "bb5b5ddf75201779b4c0623033850a9b6f0cd6117ceb7cd886b2db8ec9186652"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.3/revyl-darwin-amd64"
      sha256 "0aeab52ac63c2f9d0f41945af43d32c8de5c3743776add57f1b2550a16eab0ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.3/revyl-linux-arm64"
      sha256 "0587c24363fed76a8a892f7ca04229e07baade7281949ce7bf5cdf6750cef35c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.3/revyl-linux-amd64"
      sha256 "8e73c17defe44aebec5fe587f50a2068dbe354a2f598024c1cd35b7e8c596871"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
