cask "openpencil" do
  version "0.7.4"

  on_arm do
    sha256 "868e5c0e6faf5a83b0f32bdb0f1e67868364b923245660be441451e7f348273d"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "83663ad342ae73f59d8ca0dbafb6dcefb6984ff8620a706c4f43a66f2e5203b6"
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
