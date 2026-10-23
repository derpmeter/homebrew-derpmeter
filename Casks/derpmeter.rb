cask "derpmeter" do
  version "0.1.10"
  sha256 "24fd280caeb6e7064b2fe12f23eeea6626f2a151fb1f09ca4fca8e58d6a7f72b"

  url "https://derpmeter.com/downloads/DerpMeter-#{version}-beta-macOS-notarized.zip"
  name "DerpMeter"
  desc "Menu bar app to rate AI coding agents"
  homepage "https://derpmeter.com/apps"

  depends_on macos: :sonoma

  app "DerpMeter.app"

  uninstall quit: "com.derpmeter.companion"

  zap trash: [
    "~/Library/Application Support/DerpMeter",
    "~/Library/Preferences/com.derpmeter.companion.plist",
  ]
end
