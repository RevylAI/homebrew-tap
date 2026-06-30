class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.44"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.44/revyl-darwin-arm64"
      sha256 "d1f32c906f33b93487507b5105992154dd06f10b41f607ec291211b613b2a7e0"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.44/revyl-darwin-amd64"
      sha256 "8161e2526b8505e9ffbb792fe25aa858ffb0018de05ae1e13f4b3ecaeca46f50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.44/revyl-linux-arm64"
      sha256 "a6df30d140d2add240243350e43f62f6063ee9d15c94dbbc8ec1d08ed0c3f8c8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.44/revyl-linux-amd64"
      sha256 "e70a2f043244172bf33dc3ce31008a53c6da69a46a63199e6f6b1956d559ff3d"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
