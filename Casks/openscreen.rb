cask "openscreen" do
  version "1.9.6"

  on_arm do
    sha256 "0152bf29ad315e7a56ea3a128c809cd326d03756adf5f6756393e596f1743369"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Apple-Silicon-1.9.6.dmg"
  end
  on_intel do
    sha256 "bca548c3661670cdf3ede27299c2354280e7bc8702efad348cf866080131474a"

    url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-macOS-Intel-1.9.6.dmg"
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
