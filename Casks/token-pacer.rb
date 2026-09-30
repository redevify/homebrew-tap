cask "token-pacer" do
  version "1.3.0"
  sha256 "a11571c84d958880c63199873ed334dde95b77dde5165e2ce5d24a38fcce1643"

  url "https://github.com/heybui/tokenpacer.com/releases/download/v#{version}/TokenPacer-#{version}.dmg"
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
