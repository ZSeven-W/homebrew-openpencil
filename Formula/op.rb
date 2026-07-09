class Op < Formula
  desc "OpenPencil command-line tool"
  homepage "https://github.com/zseven-w/openpencil"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-aarch64.tar.gz"
      sha256 "aaf6d5bd1fb2f1d85f92d7c52a2bfe3b2d4cd379150485398bc8e4cfabc76846"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-x86_64.tar.gz"
      sha256 "1363f7a4c3fcff46417fe875cfebfc5e0512c450e3fb45df6a1f040ddc7bf781"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-aarch64.tar.gz"
      sha256 "1c00a7f2866b012b2e9f0bfc20ba3b697af824b457ad95784a486c126d4e62bd"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-x86_64.tar.gz"
      sha256 "b3626f3cd27ceeffeec14ed4671432841fd2d8087afd85015679f2cbbee37e0a"
    end
  end

  def install
    bin.install "op"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op --version")
  end
end
