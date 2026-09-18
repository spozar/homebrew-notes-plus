# Homebrew tap for Notes+

Notes+ is a native macOS notes app — a menu bar shortlist, a local API, and
projects you can share. This tap is how you install it with Homebrew; the
releases themselves live in
[spozar/notes-plus-releases](https://github.com/spozar/notes-plus-releases).

## Install

```bash
brew install --cask spozar/notes-plus/notes-plus
```

That one line taps this repository, trusts this cask and installs the latest
release into `/Applications`. Spelling the name out in full is how you tell
Homebrew to trust a tap it doesn't maintain; there is no separate `brew trust`
step unless you want the short name `notes-plus` to work on its own.
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
