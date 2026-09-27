cask "token-pacer" do
  version "1.2.1"
  sha256 "d68f33fee67b12b673398028fa09e5c0e6cce12fd8a0590661c5d63d7a76155c"

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
