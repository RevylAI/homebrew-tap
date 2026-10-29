class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.203"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.203/revyl-darwin-arm64"
      sha256 "686f29567201173c014e1cbcdcc7053ea1675cd737703dff46562d50c0299c22"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.203/revyl-darwin-amd64"
      sha256 "146d21064071afe3fc7e7a1941db7cecb56ff250eed60e0045432343aa0c916b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.203/revyl-linux-arm64"
      sha256 "b127ff71169f2304fb7491ddca3df3d4354d8083fa2be2e6f6210d181adff38e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.203/revyl-linux-amd64"
      sha256 "8884d38251b4c70662e0cf8aa5c49713af0289039e7267f9c7304bb7bb82dbea"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
