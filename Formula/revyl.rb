class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.132"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.132/revyl-darwin-arm64"
      sha256 "99d48671b3b539abb8453879da11b6ab42547e06bf055e8a5342fd1990c545d7"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.132/revyl-darwin-amd64"
      sha256 "100549c25fcdca3aa3bf377f9aef0b287a75da692bd3aaa1b658ea39a0cb335d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.132/revyl-linux-arm64"
      sha256 "b2649d5f7a13083d7955827de6c24d2531b5c9077868848aefaf89575d4ccc89"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.132/revyl-linux-amd64"
      sha256 "a6d9c9f5bae993fb96da8761de8c3df71fdbae70f9da96181cd794f05f67b18c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
