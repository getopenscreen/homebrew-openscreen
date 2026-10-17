cask "openscreen" do
  version "2.1.0"

  on_arm do
    sha256 "c8dc1b15a96180cc42d26f9e07019b61c57e9671ba5b922e96314a512025be53"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-2.1.0.dmg"
  end
  on_intel do
    sha256 "ac7a7133ef2152231e3397ec1538d257ab48afff62de2206ebff292cd3100541"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-2.1.0.dmg"
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
