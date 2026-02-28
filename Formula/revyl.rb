class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.7/revyl-darwin-arm64"
      sha256 "cc4c0580a9070e789a87008343daafae2956d211517406fab4524c7ab906481a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.7/revyl-darwin-amd64"
      sha256 "14278d2d3eca7cb230e35094f746b927583d4333be49a8876b17f5da9bf40c8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.7/revyl-linux-arm64"
      sha256 "07bbc2c2c455e1660ad1730edc1cc0fbbed17bf8d95e1b76c4ee8d181fcdc137"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.7/revyl-linux-amd64"
      sha256 "a22a48f877565cf722a83efadd3a1cd1fb4bd9d03bae95fd3affdb5739205f17"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
