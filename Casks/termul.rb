cask "termul" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.18"
  sha256 arm:   "8196c73fd1c38e16e9f54cf5e087932bb4f738bf9527de85947b4a3016a3f90e",
         intel: "42c41a834908c642081ab60d2813edef422ad92a6cb324fa82c4d3304ef69627"

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
