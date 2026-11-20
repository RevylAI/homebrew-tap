class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.2.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.38/revyl-darwin-arm64"
      sha256 "4e0c15fc7bff73978ecd26acd229d14738c5d02c7b89250b13dbf40df7a90441"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.38/revyl-darwin-amd64"
      sha256 "9c31eb042affb76eff5a42bfcdb6fb1454030e64d276cb9cbd374c573fcd3353"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.38/revyl-linux-arm64"
      sha256 "954ca836a529e269f65d6fecf8ed4d0a4284941a437d6fd128159642d332fb6a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.2.38/revyl-linux-amd64"
      sha256 "84ff90b7f3e9e42185de1ba3e4e2657a2a9c35e461414393e9ae52ff1ec10717"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
