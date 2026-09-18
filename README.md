# Homebrew tap for Notes+

Notes+ is a native macOS notes app — a menu bar shortlist, a local API, and
projects you can share. This tap is how you install it with Homebrew; the
releases themselves live in
[spozar/notes-plus-releases](https://github.com/spozar/notes-plus-releases).

## Install

```bash
brew tap spozar/notes-plus
brew trust --cask spozar/notes-plus/notes-plus
brew install --cask spozar/notes-plus/notes-plus
```

Homebrew 6 won't load a cask from a tap it doesn't maintain until you have
vouched for it with `brew trust`, once. After that the install goes into
`/Applications` like any other cask.
Notes+ needs macOS 14 (Sonoma) or later, and the build is a universal,
Developer ID signed and notarised binary.

## Updates

Notes+ updates itself — it checks for new releases and installs them in place,
so most of the time there is nothing to do. If you would rather drive it from
the command line:

```bash
brew upgrade --cask notes-plus
```

## Uninstall

```bash
brew uninstall --zap --cask notes-plus
```

The `--zap` removes the app's support directory and preferences along with it.
Leave `--zap` off to remove only the app and keep your notes.
