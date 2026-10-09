class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.141"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.141/revyl-darwin-arm64"
      sha256 "6ef3bd025a9bcc440cce9721443bef06c5e3b518b0829fe027b5edf217229a4d"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.141/revyl-darwin-amd64"
      sha256 "f78bd444098cf88c3e82b58b583a341acce955f364f372bd253d8d6df1db8bf8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.141/revyl-linux-arm64"
      sha256 "d857124b28ff236a470fbc82b327381da2d14973f11499def145a9dd779be291"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.141/revyl-linux-amd64"
      sha256 "0319cc7e731b1d0cedf9de2c8bb4e1cd153f9b794a5d8a2de80a03daf30f5909"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
