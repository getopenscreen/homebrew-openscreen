cask "openscreen" do
  version "2.2.2"

  on_arm do
    sha256 "cc6c9fd8826ffc1f0c78a32a7bd30016176ff41f1ace599afa29d1a9fad84d56"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-2.2.2.dmg"
  end
  on_intel do
    sha256 "626edc18b2cb923b4ffc4d4df4b533c23c45461abb0f7382e58cb11354e18052"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-2.2.2.dmg"
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
