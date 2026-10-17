cask "openscreen" do
  version "2.1.1"

  on_arm do
    sha256 "ec45c3654bd58cbfe91e0880762de2742dad5739c2bba4234c48c64a0b968f7e"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-2.1.1.dmg"
  end
  on_intel do
    sha256 "df0faee442505c2cd5cd5ce7c0583f5f3c16cc39d4c3c21f2755af66747c6244"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-2.1.1.dmg"
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
