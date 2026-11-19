class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.29/revyl-darwin-arm64"
      sha256 "03d055721ab45d7206947566050fdc41c34cbdb9f0087656881f929a76f31e09"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.29/revyl-darwin-amd64"
      sha256 "7eb962f3a5e8a4aaf39933f2a1aa713a3faa4b6e9f2da6a6cab59a94c3d8b23c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.29/revyl-linux-arm64"
      sha256 "5d23fcbad2e92cd3362d1355b22272f17afc4beb5290ae66022321b5723478dc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.29/revyl-linux-amd64"
      sha256 "8ac047b4bb50e67539887d2964a2eefbab57104049e2e3464bba18728988f5b4"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
