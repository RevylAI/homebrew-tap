class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.128"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.128/revyl-darwin-arm64"
      sha256 "14996dd34bbc0a4f5c8f66cab34fd8ad1c6c2c546e14434976512009b10129cf"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.128/revyl-darwin-amd64"
      sha256 "5221af704437c6b3068f5432337456cdd3057836c038ccbab7a9f44e37debe21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.128/revyl-linux-arm64"
      sha256 "5b588a28886627d1ec70d74db638fc227d4f33b9d77c6f4a38713d4c3db60ff2"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.128/revyl-linux-amd64"
      sha256 "872006f2449e4855a3ee9a84e74ae612c6ebcbb57f420e15406a3ec99227d757"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
