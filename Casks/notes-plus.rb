cask "notes-plus" do
  version "1.10.0"
  sha256 "03ad7bd79151ddd3a8297b48d775fcc9480ad660ac8726968cfe9c04458f0620"

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
