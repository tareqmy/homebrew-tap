class Ferronote < Formula
  desc "Blazing-fast terminal note-taking app inspired by Notational Velocity"
  homepage "https://github.com/tareqmy/ferronote"
  url "https://github.com/tareqmy/ferronote/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "41894d7ce1b45979413e2d091c04097da99f231bb6560fde1812dc3a2068782b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ferronote", shell_output("#{bin}/ferronote --version")
  end
end
