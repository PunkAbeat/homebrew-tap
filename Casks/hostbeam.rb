cask "hostbeam" do
  version "0.1.12"
  sha256 "1f75eaf19b6a4de258feb8bf879c5f91a7564e1a6f4e3f06906800f33b6a6324"

  url "https://download.hostbeam.app/v#{version}/Hostbeam_#{version}.dmg",
      verified: "download.hostbeam.app/"
  name "Hostbeam"
  desc "Menu bar utility that beams screenshots to your SSH host"
  homepage "https://hostbeam.app/"

  livecheck do
    url "https://download.hostbeam.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Hostbeam.app"

  zap trash: [
    "~/Library/Application Support/com.hostbeam.app",
    "~/Library/Caches/com.hostbeam.app",
    "~/Library/Logs/com.hostbeam.app",
    "~/Library/Preferences/com.hostbeam.app.plist",
    "~/Library/Saved Application State/com.hostbeam.app.savedState",
    "~/Library/WebKit/com.hostbeam.app",
  ]
end
