class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.95"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.95/revyl-darwin-arm64"
      sha256 "2270fb1f29172780f9c26fdd815a5534f69e5c7ce10a5e3a0f7215a3b9c1e2a2"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.95/revyl-darwin-amd64"
      sha256 "6fb6e837ef47a5bcd31bbb5053e78444f68ed271ff2fb34bb30ae787c070cd6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.95/revyl-linux-arm64"
      sha256 "6b78f04c6ec05cf303a5edaf47aa2c7dc81086821a9c823f468edf4235993384"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.95/revyl-linux-amd64"
      sha256 "a3d7fb7fe4d94a65de34fb2647b522520fd740f16d07a8c28f685474ec97379c"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
