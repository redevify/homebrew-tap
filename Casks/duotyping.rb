cask "duotyping" do
  version "1.3.0"
  sha256 "f9277f221e469c347a2b82b2b445a6cf32974d4dd2afd78bb0211bbe35bb0290"

  url "https://download.duotyping.com/v#{version}/f9277f221e46/duotyping-#{version}.dmg"
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
