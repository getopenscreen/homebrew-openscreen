cask "openscreen" do
  version "1.9.2"

  on_arm do
    sha256 "3c19d49c27ea006f53cdeda0360e0feed5033e0d4df7f40e76dd26f842ac813d"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-1.9.2.dmg"
  end
  on_intel do
    sha256 "4e25e451194ae29f2bb1f9a0496d3143e17c4fa61e71aa954e1bedb27458ad15"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-1.9.2.dmg"
  end

  name "Openscreen"
  desc "Screen recorder and video editor"
  homepage "https://github.com/getopenscreen/openscreen"

  auto_updates false
  depends_on macos: ">= :big_sur"

  app "Openscreen.app"

  zap trash: [
    "~/Library/Application Support/Openscreen",
    "~/Library/Caches/com.etiennelescot.openscreen",
    "~/Library/Logs/Openscreen",
    "~/Library/Preferences/com.etiennelescot.openscreen.plist",
    "~/Library/Saved Application State/com.etiennelescot.openscreen.savedState",
  ]
end
