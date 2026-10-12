class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.147"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.147/revyl-darwin-arm64"
      sha256 "096bbd57656c3d102b817f305c26f98abb230afb0565f4590f6ed106e56e62b3"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.147/revyl-darwin-amd64"
      sha256 "2ab18acf8354288113979b2ee125851380d3e07c193cc4beb3bc165ca40af5b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.147/revyl-linux-arm64"
      sha256 "10b85b990ffa6574ccae8f19524f9898d0cc6adf1b2d221f073d2303cf468877"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.147/revyl-linux-amd64"
      sha256 "57dc4f87897331e2957cbf9cae3466c947e00f518da1e16ff041ab9b5c6e7d8b"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
