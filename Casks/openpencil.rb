cask "openpencil" do
  version "0.6.0"

  on_arm do
    sha256 "58383390631a4104f601e11740f9ec73b740012fbf72cbf768c067119714bb92"
    url "https://github.com/zseven-w/openpencil/releases/download/v#{version}/OpenPencil-#{version}-arm64-mac.zip"
  end
  on_intel do
    sha256 "f5153aa8773e8253ae013c3b3918400e321cf1e26034b2a6981d0c998151291c"
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
