class Ferronote < Formula
  desc "A blazing-fast terminal note-taking app inspired by Notational Velocity"
  homepage "https://github.com/tareqmy/ferronote"
  version "1.2.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1bc4b6cc53efe87e2daa4ef02fb816665eada2c613db47b448cea090e5ac7b26"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9dd6f03fe0c1a37b305ae3f4e9f5e7c7bd105d66ad4d2d34127830d6a344af8c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/ferronote/releases/download/v#{version}/ferronote-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "224d6251351dc04e488addd98d80e346da2d22578bee334c095fe3f6f639d503"
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
