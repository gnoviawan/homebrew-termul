cask "termul" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.8"
  sha256 arm:   "6be298c2c2c8562b340b069357e8b5d6c3838791ac77c089114004db6a663e69",
         intel: "72b1d5ab617dcc72c021ec4524ec90a8607870d2011fa83686c4ccda185854c8"

  url "https://github.com/gnoviawan/termul/releases/download/v#{version}/Termul.Manager_#{version}_#{arch}.dmg"
  name "Termul Manager"
  desc "Terminal-native workspace and CLI agent manager"
  homepage "https://github.com/gnoviawan/termul"

  auto_updates true
  depends_on macos: :catalina

  app "Termul Manager.app"

  # v0.4.8 predates Developer ID signing and notarization. Do not copy this
  # narrowly scoped compatibility exception to later casks.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Termul Manager.app"]
  end

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
