class Sipr < Formula
  desc "SIP testing tool and traffic generator in Rust, compatible with SIPp scenarios"
  homepage "https://github.com/tareqmy/sipr"
  version "0.33.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3bc80270e804b76b528c3e8a9f2610f503e2a7591075eaacd3e87bef1a217c17"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4e2b1915de4d66a80f91a57216709cf648cf532578769725e3c3b036e1bfc240"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95ca91fde73a264f87e19ca6caaec579b5144ffdab2f6c016c8b20850d7a1fa3"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d960db623f68ec64d67775e6d0a0f9e7a4259966ec9a6d77afaf176aaac834e"
    end
  end

  def install
    bin.install "sipr"
  end

  test do
    assert_match "sipr", shell_output("#{bin}/sipr --version")
  end
end
