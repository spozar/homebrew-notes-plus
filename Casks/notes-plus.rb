cask "notes-plus" do
  version "1.9.0"
  sha256 "dfa6ab179ba75a8e119e6c435d36e8733b381053aae6be43eec65f56aa0bee81"

  url "https://github.com/spozar/notes-plus-releases/releases/download/v#{version}/Notes%2B-#{version}.zip"
  name "Notes+"
  desc "Native macOS notes app with a menu bar shortlist and a local API"
  homepage "https://github.com/spozar/notes-plus-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Notes+.app"

  zap trash: [
    "~/Library/Application Support/se.mediaempire.notes",
    "~/Library/Preferences/se.mediaempire.notes.plist",
  ]
end
