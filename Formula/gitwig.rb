class Gitwig < Formula
  desc "Rust-based Terminal User Interface (TUI) for Git"
  homepage "https://github.com/tareqmy/gitwig"
  version "2.5.13"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "31d78ffb1c98262a209ff32fe37fa90b890baaf68b9d2f2dbda9c5413b66e06f"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "eeeb840bfb6ac03b92740fb975fd20d7b4fcb63805cefea2605946e2e3ce3742"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "304f6c6cc5420371890c4a5be552400166d0e2677b2db692a628d9460ba36c7f"
    end
  end

  def install
    bin.install "gitwig"
    bin.install_symlink "gitwig" => "gtg"
  end

  test do
    assert_match "gitwig", shell_output("#{bin}/gitwig --version")
  end
end
