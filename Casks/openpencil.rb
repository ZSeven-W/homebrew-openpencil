cask "openpencil" do
  version "0.8.0"

  on_arm do
    sha256 "7d1225ee0ffa0a6be82671822b19c88638f6af32cbdee046548fd2277466d45d"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.dmg"
  end
  on_intel do
    sha256 "68f556209eaf0c9f607c7232c33f68fea37a0846d2e94590959f7207435cbe5e"
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
