cask "token-pacer" do
  version "1.4.0"
  sha256 "836533f4c1cf8d6ce27fe6abe13b6ab67ed326df308c077f0f776aba6814265d"

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
