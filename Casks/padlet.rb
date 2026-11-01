# Generated from packaging/homebrew/padlet.rb in vuhpquang/padlet — edit it there.
cask "padlet" do
  version "2.1.1"
  sha256 "c51d1bc4ca34028b0c9a60fe567ebfa2af8a14b60122ebf2aa805cb90e9dddb0"

  url "https://github.com/vuhpquang/padlet/releases/download/v#{version}/Padlet.dmg"
  name "Padlet"
  desc "Trackpad edge controls and extra gestures in the menu bar"
  homepage "https://github.com/vuhpquang/padlet"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Padlet.app"

  uninstall quit:       "com.vuhpquang.padlet",
            login_item: "Padlet"

  zap trash: "~/Library/Preferences/com.vuhpquang.padlet.plist"

  caveats <<~EOS
    Padlet is not notarized by Apple. On first launch macOS may block it:
    open System Settings → Privacy & Security and click "Open Anyway".
    Then allow Padlet under Privacy & Security → Accessibility.
  EOS
end
