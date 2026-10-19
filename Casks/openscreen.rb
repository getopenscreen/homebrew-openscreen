cask "openscreen" do
  version "2.1.2"

  on_arm do
    sha256 "1313d3376ca2bff5deaffc8114e7868e4545e5b95828773e3076d56a15a70f4e"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-2.1.2.dmg"
  end
  on_intel do
    sha256 "a5094f057f90284116c2a0e2ffc75756b30d4a5f1bc132b13bc448b8d0ffc16e"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-2.1.2.dmg"
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
