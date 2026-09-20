class Sipr < Formula
  desc "SIP testing tool and traffic generator in Rust, compatible with SIPp scenarios"
  homepage "https://github.com/tareqmy/sipr"
  version "0.27.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7e5cfe4ff211a59273126e49d0fd693413e7db6c13c0976ae5b3888f7059386d"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7f8a61aaa574cd04d05829f6ac52f01102a98a750259e02eee262084dd66b4cd"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5fbe01cf3ac7b386597d00bf0aa6188811230500902aec62c1b68cb3162852d8"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2fb98b63c7d0d7334dae755bc5e135ea5ba1017501811cc8e71a8ae7195d0208"
    end
  end

  def install
    bin.install "sipr"
  end

  test do
    assert_match "sipr", shell_output("#{bin}/sipr --version")
  end
end
