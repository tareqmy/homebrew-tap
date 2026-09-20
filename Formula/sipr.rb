class Sipr < Formula
  desc "SIP testing tool and traffic generator in Rust, compatible with SIPp scenarios"
  homepage "https://github.com/tareqmy/sipr"
  version "0.27.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e47a10bbf17ad56086f9f4b369ead6ff8e87c73109728b149a638ae59935dacf"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e020685baac74b5ecc5b2960661f80ac011406e5142920797eeb4614e7c4c196"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61bc782a26c1ae260292cc4e2afc36a601826eb9d17da689cc73143dfe4b6cdf"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "16de1006458f9e7fece19abd23f17c55221b012cd667c40ebe0e91e0df4b78ff"
    end
  end

  def install
    bin.install "sipr"
  end

  test do
    assert_match "sipr", shell_output("#{bin}/sipr --version")
  end
end
