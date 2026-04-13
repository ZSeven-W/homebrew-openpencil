cask "openpencil" do
  version "0.7.1"

  on_arm do
    sha256 "04a4c842a13e5d5de00f6abf8f6d184002278c92c595b55e62d4bf34e3ce4164"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "45701ab8fd8e7288b1db9e2014bf7956deadfc1df943bc4199215006f23af3f3"
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
