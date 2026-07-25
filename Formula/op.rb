class Op < Formula
  desc "OpenPencil command-line tool"
  homepage "https://github.com/zseven-w/openpencil"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-aarch64.tar.gz"
      sha256 "61371331dc104f5906dc71a57ca8c7e5cb635bf7206c9df0d76c5eb59e741c91"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-x86_64.tar.gz"
      sha256 "c19506ed18ea4674f333bef646f58d7a641a4f5a2efc1cddd71d5fb0b0e1cab9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-aarch64.tar.gz"
      sha256 "2625ed6c0051d50656f3807c658541a6275a2333f0b834368c48a793a9d268fc"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-x86_64.tar.gz"
      sha256 "aeffb1114857e7b810e66cd9ec927fa883dde0cb3ebf0a6ee26891e2888d20a2"
    end
  end

  def install
    bin.install "op"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op --version")
  end
end
