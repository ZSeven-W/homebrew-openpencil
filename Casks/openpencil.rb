cask "openpencil" do
  version "0.7.0"

  on_arm do
    sha256 "c531be015ce6f96383c56a5f5fc102d97da1e8dbfdebd64d33d2d8558973d73b"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "a18437931f1d9399e98ff004c166458afc09f70e36ce3ce8b59a80d554bad1ee"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-x64-mac.zip"
  end

  name "OpenPencil"
  desc "Open-source vector design tool"
  homepage "https://github.com/zseven-w/openpencil"

  app "OpenPencil.app"

  zap trash: [
    "~/Library/Application Support/OpenPencil",
    "~/Library/Preferences/dev.openpencil.app.plist",
    "~/Library/Caches/dev.openpencil.app",
  ]
end
