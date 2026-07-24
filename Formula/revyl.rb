class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.66"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.66/revyl-darwin-arm64"
      sha256 "17cfda9664a249719c41d673ec64c0f0c4b3e215261826fe1fad548ba1c451e3"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.66/revyl-darwin-amd64"
      sha256 "f631d56c56412d144623bc7a7ddd68c25857072af5e441b1bd32a509edf94fbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.66/revyl-linux-arm64"
      sha256 "d76b3de816827dcb5fe6a07a9d1248b0d59552f17c8e3da9210a7a32d4b3db23"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.66/revyl-linux-amd64"
      sha256 "884fbe87512680c246e1bb6da6ea56e502afdde7cee3fe76a65924cb42fc4592"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
