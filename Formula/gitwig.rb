class Gitwig < Formula
  desc "Rust-based Terminal User Interface (TUI) for Git"
  homepage "https://github.com/tareqmy/gitwig"
  version "2.5.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "23da690a6326bb2f03b629e483e0774aa5c94889e1c32528103fb0432db7ab82"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9684598a737d37c5a35f8b6b5813039748ad4de3fd4ef6bc310724bc14ea1cce"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42a2ff809c41040b0ca41d92488c7737be4776f90b400299927b68c206cd779d"
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
