cask "openpencil" do
  version "0.7.6"

  on_arm do
    sha256 "adcec15c57084057b033cf920ae287ccedeecc455f60a60942567d8f6c3567e5"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "b142e6045dec7444f2249b8ec8b1f7cdaa65c2203b2bbc44298f449ab4976f8d"
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
