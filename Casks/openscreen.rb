cask "openscreen" do
  version "1.10.0"

  on_arm do
    sha256 "b76e85093dad94c4457bc4e1d5aaa28af798a038dd47c3f0dcf87a4c692309f2"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-1.10.0.dmg"
  end
  on_intel do
    sha256 "16e95825665242ffe865fcaf14842d644ac1ae11dc0c9710cb28dfe4193d5966"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-1.10.0.dmg"
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
