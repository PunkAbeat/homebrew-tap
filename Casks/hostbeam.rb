cask "hostbeam" do
  version "0.1.21"
  sha256 "adc1367529bd502a44c8de01d23a6f126260cff39ac0867f29e8d89deb7b093e"

  url "https://download.hostbeam.app/v#{version}/Hostbeam_#{version}.dmg"
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
  depends_on macos: :ventura

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
