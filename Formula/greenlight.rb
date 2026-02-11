class Greenlight < Formula
  desc "Pre-submission compliance scanner for the Apple App Store"
  homepage "https://github.com/RevylAI/greenlight"
  url "https://github.com/RevylAI/greenlight/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "eb599fcdea0f4443521e5eed299b09987ffab58698acc8d8b2c32e681bfa06b6"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/greenlight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/greenlight version")
  end
end
