cask "derpmeter" do
  version "0.1.9"
  sha256 "28a2a9c40852a847922c64b121752bb6b8c421d34734c40cd5fba2a0eb1ceaa7"

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
