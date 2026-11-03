class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.210"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.210/revyl-darwin-arm64"
      sha256 "7071b7994875db48c4759c2aef0b1eafc20a08b6f7430deafc8d8e3d4c4b7075"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.210/revyl-darwin-amd64"
      sha256 "5129e017e51a3ae99d85cfd54f766bbd32f7c12bffb93a4924a513c691703354"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.210/revyl-linux-arm64"
      sha256 "6b9974d6768b01831b43c9528cbdadc98299f9672e0e48692c5eb9018c33d63b"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.210/revyl-linux-amd64"
      sha256 "d61622614fc19bfc947c76e649919e1404145ffe4e3c7a145b5c8fb622005d7c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
