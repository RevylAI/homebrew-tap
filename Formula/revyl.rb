class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.79"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.79/revyl-darwin-arm64"
      sha256 "71e0e21afa0acec37858362c06f454d2d3e4351a30a4d1d3c416022de9dede32"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.79/revyl-darwin-amd64"
      sha256 "8452594d48095bd1a149d1a7197fd5fb8de4d5c5671fa960d97c83831ad8d82c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.79/revyl-linux-arm64"
      sha256 "2aee5580d8983dcaa1579e24419af528437e9f1dbc328c8cf466d6def1f87802"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.79/revyl-linux-amd64"
      sha256 "87a0e5e42405b7946665fecc51c933b1addb9cdc454be59ea9a8a1c60c6fb1f0"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
