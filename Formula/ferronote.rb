class Ferronote < Formula
  desc "A blazing-fast terminal note-taking app inspired by Notational Velocity"
  homepage "https://github.com/tareqmy/ferronote"
  version "1.2.9"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d764814cc489316d74db02634200ef47512a283db060373b09bc259a61817814"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "45d9a970b83ce391e66d2267198562ac366882ff1b674a75aad7d9fe4e7de9fa"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "373d3aa64612cc9914397982fd0c9b8dfdfb43528d9c47feb823820e26e128da"
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
