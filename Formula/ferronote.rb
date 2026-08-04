class Ferronote < Formula
  desc "A blazing-fast terminal note-taking app inspired by Notational Velocity"
  homepage "https://github.com/tareqmy/ferronote"
  version "1.2.7"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5eab5cd8b64acd35f026b11a1f01a19a5f51dc34603cc3da4b5b4a6794ba1758"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "45e788c9c1ea6f8e5a62bee1dddd68563341270a3d3b505974b78d635a065a78"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed570a0e52db293ae449a2dedde287793f93aa3c2960be509d1151d0ab88844c"
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
