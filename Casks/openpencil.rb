cask "openpencil" do
  version "0.8.1"

  on_arm do
    sha256 "22cbab290e1755b6869b5a7ddc04ec4a04fa43192e443b81c32737371cba3075"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.dmg"
  end
  on_intel do
    sha256 "d667fa17c2a3b94527d078333e29cf1d9cd1cf7e7488d74d74dd794339dd4553"
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
