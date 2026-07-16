class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.54"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.54/revyl-darwin-arm64"
      sha256 "d21480ca200a9f82e5a4089fc599900bf6748096bf2c79ae0a812015fae5f557"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.54/revyl-darwin-amd64"
      sha256 "70dfa697bbaf72853d68528929421a6af6bf9c1c197bb526fe623ed81efe49c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.54/revyl-linux-arm64"
      sha256 "10353575bf974c01e37580d4c9a685885419fd70445016bf63fb586ee4c64f5e"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.54/revyl-linux-amd64"
      sha256 "98b537c0482eb1649b8ec246be3db79d508c967544dacca190f953c4e321ec42"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
