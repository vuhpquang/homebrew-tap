# Generated from packaging/homebrew/padlet.rb in vuhpquang/padlet — edit it there.
cask "padlet" do
  version "2.3.3"
  sha256 "adc2be00280db26c2dfc6ac6df27c4f59ad51e8fb2ca10ba415677e9063835e6"

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
