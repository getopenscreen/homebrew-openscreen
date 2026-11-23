cask "openscreen" do
  version "2.4.0"

  on_arm do
    sha256 "177374fd4b1b9290661db535010032247e0cea42f9bdf281c918c5e418876a51"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-2.4.0.dmg"
  end
  on_intel do
    sha256 "6081960bcc6f3819e6ba44e1997d49ceef7fe8183a2656b55a78d0f56ab739d9"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-2.4.0.dmg"
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
