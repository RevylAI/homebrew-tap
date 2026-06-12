class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.32/revyl-darwin-arm64"
      sha256 "53ce309720de77ea200d3801c7064252bf39d0d0bba1c25c563dab0e4e7beb7c"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.32/revyl-darwin-amd64"
      sha256 "7433aadca46e0c6a133923e0587b9393e208be5cbd523f85d2ef563131fde070"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.32/revyl-linux-arm64"
      sha256 "f2d2d887608f41626980c7b4ceca84f1558c59da519fe5bf29eedb5bee55b031"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.32/revyl-linux-amd64"
      sha256 "f705534894db55ce7130852f2073b10f6dd0a0ce2704f8e00d09c772052a8b8d"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
