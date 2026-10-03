cask "openscreen" do
  version "2.0.0"

  on_arm do
    sha256 "0ef9f341d1f2ddb640402b49a87c5500c01c7fdf37cebe6a12011d1dd0e96c66"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-2.0.0.dmg"
  end
  on_intel do
    sha256 "5124341aa6d3496971c1c78c33603a711c934a65c41bceb79bf5972a14e27bfa"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-2.0.0.dmg"
  end

  name "Openscreen"
  desc "Screen recorder and video editor"
  homepage "https://github.com/getopenscreen/openscreen"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "Openscreen.app"

  zap trash: [
    "~/Library/Application Support/Openscreen",
    "~/Library/Caches/com.etiennelescot.openscreen",
    "~/Library/Logs/Openscreen",
    "~/Library/Preferences/com.etiennelescot.openscreen.plist",
    "~/Library/Saved Application State/com.etiennelescot.openscreen.savedState",
  ]
end
