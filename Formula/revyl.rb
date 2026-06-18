class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.35/revyl-darwin-arm64"
      sha256 "e32f03a324bbda4274549f231bf00194012d19bcd9456ec034ef90e9ece0214b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.35/revyl-darwin-amd64"
      sha256 "7b873e5db6bec0a13e50ff5c5a7284b88a52dc8dedcb6cfae71cc4e4372108d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.35/revyl-linux-arm64"
      sha256 "d5ea73fdc43b41cc5f13a39301a09f570525ec2326a870157f79175c833d4635"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.35/revyl-linux-amd64"
      sha256 "50567e117676a3b15f7165474c42915726b22aa311490415bf1374ebbc43ed77"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
