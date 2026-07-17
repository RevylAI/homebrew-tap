class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.55"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.55/revyl-darwin-arm64"
      sha256 "78f97a14aab13e4b7070348defbb5d205692d97725c37fff6ddc576e6e2ed207"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.55/revyl-darwin-amd64"
      sha256 "c7018c86a8f78b6f1bba70ee57d5715e3f9f2f09d2bc3dcf4f05faf4d750c0c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.55/revyl-linux-arm64"
      sha256 "4f9b206bcd6e3080cef22c6f4a371901b0f2873d9b476c6737b925d82e70116a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.55/revyl-linux-amd64"
      sha256 "d5f8862899a3cc74530b7312efc69db93a43b17237bc0b5b5536556d553b4715"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
