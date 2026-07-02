class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.45"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.45/revyl-darwin-arm64"
      sha256 "b5300fce5f78527802758b6a5978bcbc18abc6d8ec0fcc2a737e47417776a8c8"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.45/revyl-darwin-amd64"
      sha256 "dad1cc6ae64138d385c1490d1d7793977cf41fe3ef24482e73f2a5d4ed808262"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.45/revyl-linux-arm64"
      sha256 "69bf555a1ccdc491c30b1fff3c7dd7eea125b661ea4be7b282d1b3ae95155dfc"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.45/revyl-linux-amd64"
      sha256 "d1be9e595dc9830e4a346ab6b6e702e54aaac0589eb91f564a3a1b5dc342d103"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
