class Revyl < Formula
  desc "AI-powered mobile app testing CLI"
  homepage "https://revyl.ai"
  license "MIT"
  version "0.1.121"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.121/revyl-darwin-arm64"
      sha256 "198a1ad0092b8fb381f28be07f0705016d970ea5f54b84cc7e8b9b969648d374"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.121/revyl-darwin-amd64"
      sha256 "acbb25ec4eae30b018ac6a5069e8a03aea6927bc589fcce83543d3e4dc17afd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.121/revyl-linux-arm64"
      sha256 "589608a724e49d9176f1698aa255e547769cee1f409a59020560fb3924b674f6"
    else
      url "https://github.com/RevylAI/revyl-cli/releases/download/v0.1.121/revyl-linux-amd64"
      sha256 "8fb4828aba43771b7a9081b254a38838561039aec740620cf7a3a06d569a1bdd"
    end
  end

  def install
    bin.install Dir["revyl-*"].first => "revyl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revyl version")
  end
end
