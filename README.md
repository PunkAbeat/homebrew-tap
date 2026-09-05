# Homebrew tap for Hostbeam

[Hostbeam](https://hostbeam.app) is a macOS menu-bar utility that beams a
screenshot straight to your SSH host and puts a paste-ready path on the
clipboard.

```sh
brew install --cask punkabeat/tap/hostbeam
```

The cask installs the same signed and notarized universal build that
[hostbeam.app](https://hostbeam.app) serves, so it runs on Apple silicon and
Intel Macs alike, macOS 13 or newer.

## Updating

Hostbeam updates itself: it checks daily and offers new versions in the app.
Because of that the cask is marked `auto_updates`, so `brew upgrade` leaves it
alone unless you ask:

```sh
brew upgrade --greedy hostbeam
```

## Removing

```sh
brew uninstall --cask hostbeam        # removes the app
brew uninstall --cask --zap hostbeam  # also removes its settings, logs and caches
```

The licence key lives in the macOS Keychain and is not touched by either.

The cask is bumped by Hostbeam's release script on every release; the
source of truth for what shipped is the
[changelog](https://hostbeam.app/changelog).
