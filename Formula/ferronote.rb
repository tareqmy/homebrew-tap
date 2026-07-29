class Ferronote < Formula
  desc "Blazing-fast terminal note-taking app inspired by Notational Velocity"
  homepage "https://github.com/tareqmy/ferronote"
  url "https://github.com/tareqmy/ferronote/archive/refs/tags/v1.0.8.tar.gz"
  sha256 "21cc9f5f5f100350cef24cc28ecb3e7b62b46f876b1dd228b1102a719bf99bc4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ferronote", shell_output("#{bin}/ferronote --version")
  end
end
