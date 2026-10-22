class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.185"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.185/revyl-darwin-arm64"
      sha256 "86b24ecd2af673814ecad19acb0d41c182c184acf6d205aa1ad2e46ad9bb33cc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.185/revyl-darwin-amd64"
      sha256 "44e15e17a1b93719fd0a6160b280fbaa107a9732d2caab4cff82c797dde17c39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.185/revyl-linux-arm64"
      sha256 "8e4badb0c1da249aaa8a4e686ac4972de64c8af80d29b5dcd195a08c1338ad98"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.185/revyl-linux-amd64"
      sha256 "55fc1db05cb7688bcd18a32a524f0544cbe6e26c6eda92b4436fe9c59e2aa629"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
