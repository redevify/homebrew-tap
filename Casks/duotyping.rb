cask "duotyping" do
  version "1.2.1"
  sha256 "06fb87c0aa6fed5ca39f4a003bfad8caf59b5c17501e8beb854248c27f6496c7"

  url "https://download.duotyping.com/v#{version}/06fb87c0aa6f/duotyping-#{version}.dmg"
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
