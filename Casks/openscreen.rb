cask "openscreen" do
  version "1.12.0"

  on_arm do
    sha256 "2209d8835e5e9d218bdaf58142477f59b5e2006aa87d1c2ebec3597b9a30022d"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-1.12.0.dmg"
  end
  on_intel do
    sha256 "d88160d56f98c7672486335ef91dd1aca01d89e189a9b6cc2c37e89afe76b8b8"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-1.12.0.dmg"
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
