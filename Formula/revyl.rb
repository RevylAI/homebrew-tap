class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.9/revyl-darwin-arm64"
      sha256 "512d655b1c63eb952e45259d6f4f836726d71c5d8eeb9a49f38e061a8c8665ef"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.9/revyl-darwin-amd64"
      sha256 "8863fc9c6cda9bc81180f96e7c5c670c7e7d29bed4f801032cc493a470832c67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.9/revyl-linux-arm64"
      sha256 "b1a3db3d11236740fd6220a997f6b73c8a7f2c1731a9589f553f8c01f77a5361"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.9/revyl-linux-amd64"
      sha256 "b8bae83ac0287a376bdbd6634efc07c760e258e577329fc309db4a925572453e"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
