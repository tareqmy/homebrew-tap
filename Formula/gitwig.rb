class Gitwig < Formula
  desc "Rust-based Terminal User Interface (TUI) for Git"
  homepage "https://github.com/tareqmy/gitwig"
  version "2.5.12"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "933a80fdb48a5d2c8b396c06bdff6858d1b6a6b570d74baef4ae0c8a987743e2"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f06192a564bc94bd6631f662a1a12f1e466380985bf5a3a8a12d523bbfcf3496"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e59663234ca0f06f816e138e2824f26e4dcbf6bc4d15abdb0b8a2f4dfcb40be8"
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
