cask "termul" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.10"
  sha256 arm:   "f37c54c38cd31068dc84568bc4cbd131d44efda7cfcf5848e287fffc56f0bc68",
         intel: "3deef61d7da267fb39e72e1012263fe12ae0cf0c38197d30550bdb1b39c341a0"

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
