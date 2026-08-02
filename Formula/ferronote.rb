class Ferronote < Formula
  desc "A blazing-fast terminal note-taking app inspired by Notational Velocity"
  homepage "https://github.com/tareqmy/ferronote"
  version "1.2.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "72195a603e99977196fd02e00d2b1c41dc39b4e93a864d139410267b3facd5d1"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "286ef244748a0ba69e852ea5f817c126a32feacf5e7db69ba558b070b2caa18c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae5d869b47c26108a8b35f096a10f7dbc2a7780bb5920144d15125667394d53c"
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
