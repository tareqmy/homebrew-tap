class Sipr < Formula
  desc "SIP testing tool and traffic generator in Rust, compatible with SIPp scenarios"
  homepage "https://github.com/tareqmy/sipr"
  version "0.31.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b79bcdf69bdf65e846cc58895fc578bd786ca8638249d7db5d1ec85d40d8c93b"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "95cd1d1891c6aba763456d478654a972a2901b88bfe652d1e594129eeece9694"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc47e3f01c22d453f2fa5f390dd3d304678ec233e482b98992671722736a53a0"
    elsif Hardware::CPU.arm?
      url "https://github.com/tareqmy/sipr/releases/download/v#{version}/sipr-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9fb72678059505a9d7480f2c935bc3134ed705da9c412f46ef64b15c2ea0f31"
    end
  end

  def install
    bin.install "sipr"
  end

  test do
    assert_match "sipr", shell_output("#{bin}/sipr --version")
  end
end
