cask "termul" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.50"
  sha256 arm:   "4def5982a544b4895dcc90ad0addd87d5f493e7ad301c7ef0454e162a475579b",
         intel: "4b6b71b25a8fd9454327708a638b40009b265e09ec8c2d24f263e939eb7d91cf"

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
