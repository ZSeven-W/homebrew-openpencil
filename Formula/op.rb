class Op < Formula
  desc "OpenPencil command-line tool"
  homepage "https://github.com/zseven-w/openpencil"
  version "0.8.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-aarch64.tar.gz"
      sha256 "e877c4c68220ca0c1e17a4ecd4fbb19c415846b79669fb0f647460ea8dd54a06"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-macos-x86_64.tar.gz"
      sha256 "6b043025121885a6a3c79ebc25a78534850a2df1358cf10a6c37f07b107bcc97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-aarch64.tar.gz"
      sha256 "47b6a85ae7508bc67c4508636fdb113679836d0be8d06ccea07c90217bffed29"
    else
      url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/op-cli-linux-x86_64.tar.gz"
      sha256 "5bce59ac406048c08a4fd7f04a5f8761d0a29cfe0d3873743e916e642b4df5e4"
    end
  end

  def install
    bin.install "op"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op --version")
  end
end
