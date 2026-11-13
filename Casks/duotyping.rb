cask "duotyping" do
  version "1.4.0"
  sha256 "160ecccf563775eb790df7a7918a0d21bbce4e44377ffc986b889571f3b70cc6"

  url "https://download.duotyping.com/v#{version}/160ecccf5637/duotyping-#{version}.dmg"
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
