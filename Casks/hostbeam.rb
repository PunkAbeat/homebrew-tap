cask "hostbeam" do
  version "0.1.18"
  sha256 "db9a81aa17ff0739b0b0406a098e1ee71f8863506902212c55872580a103f5dc"

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
