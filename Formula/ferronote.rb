class Ferronote < Formula
  desc "A blazing-fast terminal note-taking app inspired by Notational Velocity"
  homepage "https://github.com/tareqmy/ferronote"
  version "1.2.11"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9d49a4e1aabaefc4fa46eeb81cef6da2f0b8d52a6c1ec2dae5f836a8e810091b"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c8350e31c4dc0644303a78923b053bb88777ae13f04e4b2402961dc5c88c6ac4"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33a2768080c9ca6d4c61ed23969c642b0e0963b7f4a5275a46a64ecc42362fa1"
    end
  end

  def install
    bin.install "ferronote"
    bin.install_symlink "ferronote" => "fn"
    bin.install_symlink "ferronote" => "fnt"
  end

  test do
    assert_match "ferronote", shell_output("#{bin}/ferronote --version")
  end
end
