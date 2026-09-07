class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.108"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.108/revyl-darwin-arm64"
      sha256 "e36469f6aa41e12c0af5e37683fffd496d36580d5040af4ace93f54d8b94423b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.108/revyl-darwin-amd64"
      sha256 "bb2d9425d69fe47921d18f25fe9474455e774c707682d4e4316d3213a5639c41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.108/revyl-linux-arm64"
      sha256 "b18bedc76a0ef9b414547e48375d9a24b4dceb5f317064ab6cb0b8d2697ba95e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.108/revyl-linux-amd64"
      sha256 "cc3b7b9cfc866864ba1ce9c6ca64c66ebc4a72d1198fb3c06592b04081c54d80"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
