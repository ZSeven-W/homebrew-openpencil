class Op < Formula
  desc "OpenPencil command-line tool"
  homepage "https://github.com/zseven-w/openpencil"
  version "0.8.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-aarch64.tar.gz"
      sha256 "56949cf4d0c65d2baf926fe1c4c579f21a6fcd112bf56d6172d944d43a3c8a4a"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-x86_64.tar.gz"
      sha256 "afa19c284cf9a4321c8e3f9160e53806e0db7a11d23fead2b74df184e152e7c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-aarch64.tar.gz"
      sha256 "d441aa595de79ef4f95f55420b40e7de287d0e73d938227ccee311fec75d6e1d"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-x86_64.tar.gz"
      sha256 "14e7792b3af4da5596effbd5ff895ab4d6d6cc0948d8a63bbaf48213032a72c9"
    end
  end

  def install
    bin.install "op"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op --version")
  end
end
