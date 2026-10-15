class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.159"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.159/revyl-darwin-arm64"
      sha256 "868111f24ad704d1ed3a9ebe1ac76f51db5fdc7c84b91f3d077b0a27d9242ebb"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.159/revyl-darwin-amd64"
      sha256 "0b523a33ff38c0fbd7d65ba288a0c99a2c79ccc1430152cd79c98b3ce24149b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.159/revyl-linux-arm64"
      sha256 "ab2d14964b26cccefed5694dac35b3c22ec43b7ebaf33fe520ae86179d340a9a"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.159/revyl-linux-amd64"
      sha256 "0044cf2faa0e13f454312ed8309a7110636876701cf36f902d49436d6b96eddb"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
