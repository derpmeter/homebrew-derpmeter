cask "derpmeter" do
  version "0.1.12"
  sha256 "c6a60adcd4f45c5dec87b68f2d3d8e94ac7cde4b9d9fcb82d1ad6f64a739507c"

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
