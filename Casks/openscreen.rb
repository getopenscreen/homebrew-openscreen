cask "openscreen" do
  version "1.12.1"

  on_arm do
    sha256 "3a869d9744e30af29f74941b9d6f5c19f27eb9040d3d450de2505f9c6ef5fd47"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-1.12.1.dmg"
  end
  on_intel do
    sha256 "12b44f806b4cec71c2e200e1b8d4f07a51c8d96d5cec1d9667b2ceaeb2c5a27f"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-1.12.1.dmg"
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
