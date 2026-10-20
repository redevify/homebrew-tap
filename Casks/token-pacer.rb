cask "token-pacer" do
  version "1.4.1"
  sha256 "78f3d04fe7ff7f89b7c5526a3d4ec68d11552c8d5747bf491591b15940902796"

  url "https://github.com/huyyb/token-pacer/releases/download/v#{version}/TokenPacer-#{version}.dmg"
  name "Token Pacer"
  desc "Claude Code and Codex usage in the notch"
  homepage "https://tokenpacer.com/"

  livecheck do
    url "https://tokenpacer.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "TokenPacer.app"

  zap trash: [
    "~/Library/Application Support/TokenPacer",
    "~/Library/Preferences/com.redevify.token-pacer.plist",
  ]
end
