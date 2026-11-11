class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.234"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.234/revyl-darwin-arm64"
      sha256 "5b3f38024abba1ed0a73ca3106c9965f354dbc8e72ba4d35f603451d0ea3d2b0"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.234/revyl-darwin-amd64"
      sha256 "9e9b2bd7d41061a1fbdaa6c8f0d2fe64265f75e19029e3b492506a2978f2c465"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.234/revyl-linux-arm64"
      sha256 "7fa8b1bdd5e1535820aff630c006c64de62304ffc3235757de29ff4eaff9e357"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.234/revyl-linux-amd64"
      sha256 "8744515a541fda82164598393ab4be1205f087b341e505bfd36d6546689efa01"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
