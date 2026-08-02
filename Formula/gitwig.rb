class Gitwig < Formula
  desc "Rust-based Terminal User Interface (TUI) for Git"
  homepage "https://github.com/tareqmy/gitwig"
  version "2.5.4"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b2674378f36a7b85f683c4f3c598e2bce4039d32201c2b836269b396db86df63"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7181b5735f298e812fe3ef30bae717fdcda4b1eebdf6d7ba41c47ab25dedfbde"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/gitwig/releases/download/v#{version}/gitwig-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e24956bc56a3ef0871b35fe96dae3d17f1a94be59ed254904882ab6e32d2cfc6"
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
