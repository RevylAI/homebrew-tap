class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.22/revyl-darwin-arm64"
      sha256 "33c143e9405f7b84762ed8bcccc89ffbba611fd617d6b2171730ed85bb9fb429"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.22/revyl-darwin-amd64"
      sha256 "29243ac3215e44502bff31dacdf391a1f56783385cde540bacfa60ab6779e016"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.22/revyl-linux-arm64"
      sha256 "31d992aec0fc0bf10ae14fbd6c9f35fa0f70bc9dffd631e444e40f576415f03b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.22/revyl-linux-amd64"
      sha256 "4bf9ec12a2472bace840b02a608987668c97b1415692a42a995adaafac07cce7"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
