cask "hostbeam" do
  version "0.1.28"
  sha256 "bcce446b44fead7df8263c8864ef7bf5442fb33af81e0ecad4913edef1858b73"

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
