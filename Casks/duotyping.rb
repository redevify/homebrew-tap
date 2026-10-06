cask "duotyping" do
  version "0.1.0"
  sha256 "9052d42f21b3c346d30d7d8671ff8cecd7df39609472fbf0c398f993eed0ec71"

  url "https://github.com/duotyping/duotyping.com/releases/download/v#{version}/DuoTyping-#{version}.dmg"
  name "DuoTyping"
  desc "Writing assistant that checks grammar and tone in any app"
  homepage "https://duotyping.com/"

  livecheck do
    url "https://duotyping.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DuoTyping.app"

  zap trash: [
    "~/Library/Application Support/DuoTyping",
    "~/Library/Preferences/com.redevify.duotyping.plist",
  ]
end
