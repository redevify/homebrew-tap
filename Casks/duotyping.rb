cask "duotyping" do
  version "0.1.0"
  sha256 "1f3219d7821844b325051d2ee9dbacacdb12a573638dcddf0e1b7f792d983690"

  url "https://download.duotyping.com/v#{version}/duotyping-#{version}.dmg"
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
