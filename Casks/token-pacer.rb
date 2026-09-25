cask "token-pacer" do
  version "1.2.0"
  sha256 "5821cccce9db1f19fc3e21d7b2e290b15c73145b8587cb70d3fc89cb0414100c"

  url "https://github.com/heybui/tokenpacer.com/releases/download/v#{version}/TokenPacer-#{version}.dmg",
      verified: "github.com/heybui/tokenpacer.com/"
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
