cask "openscreen" do
  version "1.9.5"

  on_arm do
    sha256 "2e46ebe955e6efd2a265f12d49433d57d23da3b8a2ff4ae38478c7039ac83c81"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-1.9.5.dmg"
  end
  on_intel do
    sha256 "97c6a503f4b168c40f6c578044151e56961010118e75d4896480e7aaef0f03ee"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-1.9.5.dmg"
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
