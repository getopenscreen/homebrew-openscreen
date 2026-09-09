cask "openscreen" do
  version "1.11.0"

  on_arm do
    sha256 "86ffd00c7892c9dcaf1d32b886a325fda21c7a513d417c057a741e6588edb048"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-1.11.0.dmg"
  end
  on_intel do
    sha256 "4855056c303aaafa16efea36eb7f823d3e6148fab22cd7c50f4b3291aa07fd0d"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-1.11.0.dmg"
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
