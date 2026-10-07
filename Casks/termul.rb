cask "termul" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.21"
  sha256 arm:   "7d0dd72b882ed2c4b051e1cc6cfa4a1b153597b9080a32e1433632a0520f5786",
         intel: "77b7c0cf40221568c8b94c6b0afb49e466c49e9839de7b1e1c341d3c3a56bf11"

  url "https://github.com/gnoviawan/termul/releases/download/v#{version}/Termul.Manager_#{version}_#{arch}.dmg"
  name "Termul Manager"
  desc "Terminal-native workspace and CLI agent manager"
  homepage "https://github.com/gnoviawan/termul"

  auto_updates true
  depends_on macos: :catalina

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
