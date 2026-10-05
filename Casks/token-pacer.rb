cask "token-pacer" do
  version "1.4.0"
  sha256 "9f516c41c1234b45354a2075b0b09aba39f7d237e78458814ed3bf639d36078c"

  url "https://github.com/heybui/token-pacer/releases/download/v#{version}/TokenPacer-#{version}.dmg"
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
