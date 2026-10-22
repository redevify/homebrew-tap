cask "duotyping" do
  version "1.0.0"
  sha256 "a440b87e94cb8f2b7edf03822731cea5c1610f080de16198173922f195ae01b1"

  url "https://download.duotyping.com/v1.0.0/a440b87e94cb/duotyping-1.0.0.dmg"
  name "DuoTyping"
  desc "Writing assistant that checks grammar and tone in any app"
  homepage "https://duotyping.com/"

  livecheck do
    url "https://download.duotyping.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DuoTyping.app"

  zap trash: [
    "~/Library/Application Support/com.redevify.duotyping",
    "~/Library/Application Support/DuoTyping",
    "~/Library/Preferences/com.redevify.duotyping.plist",
  ]
end
