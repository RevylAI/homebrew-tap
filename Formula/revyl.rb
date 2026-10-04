class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.136"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.136/revyl-darwin-arm64"
      sha256 "966b15549c942536e6c19e0ee9bff52b8b484516ad8c4d174fdc4862ac50a1c6"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.136/revyl-darwin-amd64"
      sha256 "0e7c749e4efe19a74baca5786f2f5775585c378ca870158c350feedc7e05be01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.136/revyl-linux-arm64"
      sha256 "7555d3d7f52b5a8653fc031438e7bb6bbde9d6232e7f0be89d0b2bf115f635cc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.136/revyl-linux-amd64"
      sha256 "da62064f6b61c8a6156fa58e1c07d0311e97d8dd5326bc83c9d730d6acb1b716"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
