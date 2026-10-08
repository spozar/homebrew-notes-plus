cask "notes-plus" do
  version "1.12.0"
  sha256 "afdcb0d04b7efb22cb7c6bf41885c6e35f629c90178acc25b34f194dff84815c"

  url "https://github.com/spozar/notes-plus-releases/releases/download/v#{version}/Notes%2B-#{version}.zip"
  name "Notes+"
  desc "Notes app with a menu bar shortlist and a local API"
  homepage "https://github.com/spozar/notes-plus-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Notes+.app"

  zap trash: [
    "~/Library/Application Support/se.mediaempire.notes",
    "~/Library/Preferences/se.mediaempire.notes.plist",
  ]
end
