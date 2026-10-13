class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.153"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.153/revyl-darwin-arm64"
      sha256 "a387fe3ec997611138a5148e3b34dbfad8a16b228a32bf835c2971c2ac5700c2"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.153/revyl-darwin-amd64"
      sha256 "eb00657575f7b47c97fd1ed3ce7589568da9b0b122deb53c787e299fa2d56214"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.153/revyl-linux-arm64"
      sha256 "40935f0d3e3a3eea67cb55ef9cdd948998fdfc137749dd4a9978afb40fdd8d59"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.153/revyl-linux-amd64"
      sha256 "5a92dcc49fa5ba7bd1f1b21a81ce26b8b0171fc559ce1f559690acd5e735dfc0"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
