cask "openpencil" do
  version "0.8.6"

  on_arm do
    sha256 "668b6ad7d8378b490245703dc932cadff8688085f656fdc200a1615abd1b0838"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.dmg"
  end
  on_intel do
    sha256 "6aeeae68fadd50976d4cec16fa439b28a60a4805302ae38c35567de98bc2084d"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-x64-mac.dmg"
  end

  name "OpenPencil"
  desc "Open-source AI-native vector design tool"
  homepage "https://github.com/zseven-w/openpencil"

  app "OpenPencil.app"

  zap trash: [
    "~/Library/Application Support/OpenPencil",
    "~/Library/Preferences/com.zseven-w.openpencil.plist",
    "~/Library/Preferences/dev.openpencil.app.plist",
    "~/Library/Caches/com.zseven-w.openpencil",
    "~/Library/Caches/dev.openpencil.app",
  ]
end
