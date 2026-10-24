cask "derpmeter" do
  version "0.1.11"
  sha256 "dd65565612684e1ddf2ddd5cbbc92e5303bd974e02748aaebb5dda05c80b278e"

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
