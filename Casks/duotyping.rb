cask "duotyping" do
  version "1.1.0"
  sha256 "626e383f387cd7e4d2b883127da301409bfd944bb16687b6f0ba2338899d8a98"

  url "https://download.duotyping.com/v#{version}/626e383f387c/duotyping-#{version}.dmg"
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
