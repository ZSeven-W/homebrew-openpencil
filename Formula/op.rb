class Op < Formula
  desc "OpenPencil command-line tool"
  homepage "https://github.com/zseven-w/openpencil"
  version "0.8.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-aarch64.tar.gz"
      sha256 "9d8a9031058f36dca06bb6035d192b07a895eec039260b979912dfbd34ab18b5"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-x86_64.tar.gz"
      sha256 "520534548d6de515f80d31ee42e9fa2fcd614c00d7ef31bb423ccc2f1426fb0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-aarch64.tar.gz"
      sha256 "381cc73980ac60698b78c1b491be9ee84bcd8e4b6b10b75d22647dea7b3c1762"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-x86_64.tar.gz"
      sha256 "556c7bb56166b3af7e8f55a1a2db1916c52b784dfb0b140a68412382f61daf74"
    end
  end

  def install
    bin.install "op"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op --version")
  end
end
