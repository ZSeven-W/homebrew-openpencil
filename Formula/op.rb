class Op < Formula
  desc "OpenPencil command-line tool"
  homepage "https://github.com/zseven-w/openpencil"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-aarch64.tar.gz"
      sha256 "60b30253f93fee173c2b7827fccca05161eab059342c4361e9d7d5e1bc78f073"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-x86_64.tar.gz"
      sha256 "6677568f64b85e7aaf151a18186d629029e7aa84170b1449c0ef7ec4bb174dd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-aarch64.tar.gz"
      sha256 "ee1847704eb8e717b986608c0b7eaab9613fbffb833bf778ac9bb62662ccf906"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-x86_64.tar.gz"
      sha256 "956c65de1f7780ec179ca1ad4b12fd56779a475a5b76befca4da7143a65a5188"
    end
  end

  def install
    bin.install "op"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op --version")
  end
end
