cask "derpmeter" do
  version "0.1.7"
  sha256 "5bb2378b002e2f9dabe71ebff5a8794ebd9d58d678fa2214c3c111240ff8980c"

  url "https://derpmeter.com/downloads/DerpMeter-#{version}-beta-macOS-notarized.zip"
  name "DerpMeter"
  desc "Menu bar app to rate AI coding agents"
  homepage "https://derpmeter.com/apps"

  depends_on macos: ">= :sonoma"

  app "DerpMeter.app"

  uninstall quit: "com.derpmeter.companion"

  zap trash: [
    "~/Library/Application Support/DerpMeter",
    "~/Library/Preferences/com.derpmeter.companion.plist",
  ]
end
