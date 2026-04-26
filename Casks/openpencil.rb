cask "openpencil" do
  version "0.7.5"

  on_arm do
    sha256 "28d1d58be648d8c8ff4c159c895dc4ac57482ff80c9ba818ec3052588bb4c25d"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "8ac0bf0ddc25ef543b28f97a13eb4f45773e0d7741dcbda894343a540e19ea2a"
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
