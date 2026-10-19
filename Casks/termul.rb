cask "termul" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.52"
  sha256 arm:   "12a6211304bedd06578f9a19d3bc083116e6592a4884e3aa75b905cfb1f3c2a8",
         intel: "40f3d5caa6903a0275e977a961078a087b5f6425ec843b32ca990730dbba2e69"

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
