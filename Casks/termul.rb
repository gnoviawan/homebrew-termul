cask "termul" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.20"
  sha256 arm:   "228a99d270e54a62d04beb6f343c23493538c58b962fb2f3bf439b43edbe9ad3",
         intel: "84c30e32b81f17b51110f781108bf3adfd03b73965cb6a2eb4810da74b663bb4"

  url "https://github.com/gnoviawan/termul/releases/download/v#{version}/Termul.Manager_#{version}_#{arch}.dmg"
  name "Termul Manager"
  desc "Terminal-native workspace and CLI agent manager"
  homepage "https://github.com/gnoviawan/termul"

  auto_updates true

  app "Termul Manager.app"

  zap trash: [
    "~/Library/Application Support/com.termul-manager.app",
    "~/Library/Caches/com.termul-manager.app",
    "~/Library/HTTPStorages/com.termul-manager.app",
    "~/Library/Logs/com.termul-manager.app",
    "~/Library/Preferences/com.termul-manager.app.plist",
    "~/Library/Saved Application State/com.termul-manager.app.savedState",
    "~/Library/WebKit/com.termul-manager.app",
  ]
end
