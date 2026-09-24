cask "openscreen" do
  version "1.13.0"

  on_arm do
    sha256 "3f045fcf88976a15e2b83d11f32c9b986983edae8d8d9b4bd3e7150a985d984b"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-1.13.0.dmg"
  end
  on_intel do
    sha256 "fc1f139234bc9e7401aa3ebd1627f5801a4f90b554e20bec5a6d15e0a659b41f"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-1.13.0.dmg"
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
