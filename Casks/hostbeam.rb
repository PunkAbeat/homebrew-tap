cask "hostbeam" do
  version "0.1.26"
  sha256 "07a0071ecc84dfc2ecee643aa0218b8a0e88d22728fa081d87c6049b7c54de6f"

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
