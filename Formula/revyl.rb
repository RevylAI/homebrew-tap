class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.224"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.224/revyl-darwin-arm64"
      sha256 "926a4b7467cad27a85572ea7d17c9490a3937c2c6b1584a990f8cf767a279a66"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.224/revyl-darwin-amd64"
      sha256 "a0972a9b9d7b331fd10ae657679f7bc92a11097af53d6c597148afbe46cbb02c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.224/revyl-linux-arm64"
      sha256 "fa9344974f0d53d654eb4895b8d18ec44fe8a99777fb31eed718d22575bd19f0"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.224/revyl-linux-amd64"
      sha256 "dd882d7ccd3b181e2ddda32dc04ed7cd385c95a437074b0019f0d84c4cb18eaf"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
