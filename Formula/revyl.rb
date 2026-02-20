class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.5/revyl-darwin-arm64"
      sha256 "0c496f691fc01656cde1f508e792df4a11d1afc2d11589df168c45e00c1b7605"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.5/revyl-darwin-amd64"
      sha256 "a7e6897d31efa35d5a52cba52b9886677072ff37e93105b6c3886f3ef25245e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.5/revyl-linux-arm64"
      sha256 "6e9ae040ac22bc3e1360f192c020f038ad2316fac4714de16d5612f654f33a07"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.5/revyl-linux-amd64"
      sha256 "a975f8f8af5ff2c05fe7643e35a34499b6d1f317be7e1f89dba0ea522a5bf1ad"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
