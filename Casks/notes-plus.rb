cask "notes-plus" do
  version "1.16.0"
  sha256 "ae5a8f1311959680214badf8d24cee9440ed79787f11ac990411428239d9dfd7"

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
