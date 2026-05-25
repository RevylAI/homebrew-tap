class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.26/revyl-darwin-arm64"
      sha256 "937ee60220ab770620607ec5ff727c893319e7cbcf6737eb2b6340fa3a881d21"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.26/revyl-darwin-amd64"
      sha256 "2277f19358d06f87a556f6b690ec6f5fc8b84cb1ba5cc8db439f77fb40628dd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.26/revyl-linux-arm64"
      sha256 "798079e81bcd4a305d80248e64186156942cf1f391a611108e3cb84071a4de5a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.26/revyl-linux-amd64"
      sha256 "f0100bca18f6d88b297a84f05d300e64ead4aabd46d043d21e871bc5c8f67971"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
