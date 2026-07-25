cask "openpencil" do
  version "0.8.2"

  on_arm do
    sha256 "25fb2aa426c07512156ac91300e6de362929be17b11bbb9126aa51e23a793d76"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.dmg"
  end
  on_intel do
    sha256 "1da7c0f71c50ebc66dc97ed6ed728ef6aa17fd0424e58c3e51c98015a0590b3b"
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
