cask "openpencil" do
  version "0.8.5"

  on_arm do
    sha256 "d9b79d1c48373e29a444c2289af1f515f195a454e0ac5cec09e7a14f142ee19f"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.dmg"
  end
  on_intel do
    sha256 "e3c452aaf208a0d674d2655a264a77949c1061b20bf509dddc99ee6b479af769"
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
