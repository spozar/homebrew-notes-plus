cask "notes-plus" do
  version "1.17.0"
  sha256 "07bf8ad414e3900a859d5cfe8e9dfe6abfb614e1012ada471b6d7d6b7e1db8fc"

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
