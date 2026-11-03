cask "openscreen" do
  version "2.2.1"

  on_arm do
    sha256 "0b11fd938cea01e1aeddac7ad84aa3c7bf2353bd5d50abcdb793b096378b737b"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-2.2.1.dmg"
  end
  on_intel do
    sha256 "e90fa4cc471da4f5523e74626666ac33edcb01c35f79f5085cedb34358b81897"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-2.2.1.dmg"
  end

  name "Openscreen"
  desc "Screen recorder and video editor"
  homepage "https://github.com/getopenscreen/openscreen"

  auto_updates false
  depends_on macos: :ventura

  app "Openscreen.app"

  zap trash: [
    "~/Library/Application Support/Openscreen",
    "~/Library/Caches/com.etiennelescot.openscreen",
    "~/Library/Logs/Openscreen",
    "~/Library/Preferences/com.etiennelescot.openscreen.plist",
    "~/Library/Saved Application State/com.etiennelescot.openscreen.savedState",
  ]
end
