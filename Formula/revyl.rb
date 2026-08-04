class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.77"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.77/revyl-darwin-arm64"
      sha256 "8a1df068dc4a1100ce987ee4dd53350e39db06e05c603c5c3a2429c00ce55a92"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.77/revyl-darwin-amd64"
      sha256 "b0b6c3d975a7bab5ca039ee804f83a3ae4e2bcdb14ee77877c3eccaf2dc788de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.77/revyl-linux-arm64"
      sha256 "c2d2b23eb68851c425017c268632c78fbd0ec2bbe3de880410aeb99514b87886"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.77/revyl-linux-amd64"
      sha256 "6f8d2a42559b6a52f0875cf667de24bf767312040ae1697e158516992442299c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
