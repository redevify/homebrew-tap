cask "duotyping" do
  version "1.2.0"
  sha256 "4cd4b65e6000f569391dac8d9dc86e8540c95323bf9ec6f6dba328267c0015c4"

  url "https://download.duotyping.com/v#{version}/4cd4b65e6000/duotyping-#{version}.dmg"
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
