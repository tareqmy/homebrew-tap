class Sipr < Formula
  desc "SIP testing tool and traffic generator in Rust, compatible with SIPp scenarios"
  homepage "https://github.com/tareqmy/sipr"
  version "0.28.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "996bbb478bd56bfaf4731ee0cd7ac3d5299b1d6211e1fbc1bee28831fd3dedaa"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a8a2a5527feff5d946b6129eb7c38348201da2efb2bcebac4455de3fca61d984"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49ff3926dafff2e323ed5178c59dfca8698a9154932cc8c1f5a04f59af074758"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb2cb0b7315f1b021238c09e4736cc1d2536fc846a780a8bf4bc0176b8856740"
    end
  end

  def install
    bin.install "sipr"
  end

  test do
    assert_match "sipr", shell_output("#{bin}/sipr --version")
  end
end
