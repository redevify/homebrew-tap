cask "duotyping" do
  version "0.1.0"
  sha256 "e52a66a0c001a88f096a7fb3d7da56e04c90b97b3447b19645f259c36f48db7a"

  url "https://download.duotyping.com/v0.1.0/e52a66a0c001/duotyping-0.1.0.dmg"
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
    "~/Library/Application Support/DuoTyping",
    "~/Library/Preferences/com.redevify.duotyping.plist",
  ]
end
