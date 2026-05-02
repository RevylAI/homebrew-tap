class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.20/revyl-darwin-arm64"
      sha256 "53c0523c6e1881351ebddd585231d39137cde33ba6dac54defdcfecba929df30"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.20/revyl-darwin-amd64"
      sha256 "6c92bccd8139a69393fad912f304e641d2b3a41c2f5e5d908de8277e34eb7077"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.20/revyl-linux-arm64"
      sha256 "878e55779cac492155ae90bc449bcec2994179c70d0697fd14dbaa4d5cfde819"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.20/revyl-linux-amd64"
      sha256 "39121be493f2fb4d9fe709796ae89a76c1ea20c8bba163727e407d2bc9dc7561"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
