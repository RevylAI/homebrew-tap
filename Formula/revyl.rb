class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.25/revyl-darwin-arm64"
      sha256 "60419917052b890c14c2a7704362dad111daf1871ae314da0a37bc531790bf99"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.25/revyl-darwin-amd64"
      sha256 "dcb06a3ff6069bb0cc46b774c64164328918b39854e8af47df9214f69f9af241"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.25/revyl-linux-arm64"
      sha256 "dfce07551095b616e2a6f5a703643003e05466709da088fdcd26679201529b85"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.25/revyl-linux-amd64"
      sha256 "d37ed9fa86328bc6db05605a6bbb9b1ee669c399049e97fe18bf4e3943636f1f"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
