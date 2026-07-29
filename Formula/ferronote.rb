class Ferronote < Formula
  desc "Blazing-fast terminal note-taking app inspired by Notational Velocity"
  homepage "https://github.com/tareqmy/ferronote"
  url "https://github.com/tareqmy/ferronote/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "dc6dd808624214741f6c1cb6aea04165cabfb3ccb3f58e5518c9cf3fffd24c8d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ferronote", shell_output("#{bin}/ferronote --version")
  end
end
