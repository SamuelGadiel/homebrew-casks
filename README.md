# homebrew-casks

Personal Homebrew tap — a single place for every macOS app I distribute
via Homebrew.

## Installation

Each cask can be installed directly, without tapping first:

```sh
brew install --cask samuelgadiel/casks/<cask-name>
```

(or `brew tap samuelgadiel/casks` once, then `brew install --cask
<cask-name>` for every cask afterward — useful if you plan to install more
than one.)

## Casks

### [ClaudeS](https://github.com/SamuelGadiel/claudes)

Menu-bar app to manage multiple Claude Code accounts on macOS.

```sh
brew install --cask samuelgadiel/casks/claudes
```

### [insomnia-classic](https://github.com/Kong/insomnia)

Keeps [Insomnia](https://insomnia.rest/) pinned to `2023.5.8`, the last
release before the 8.0.0 redesign (mandatory login, tab-based UI,
built-in AI features).

```sh
brew install --cask samuelgadiel/casks/insomnia-classic
```

If you already have the official `insomnia` cask installed, remove it
first (both target `/Applications/Insomnia.app`):

```sh
brew uninstall --cask insomnia
```

After installing, go to **Preferences → General** and uncheck
**"Automatically update"** — Insomnia ships its own built-in updater,
independent of Homebrew, and leaving it on defeats the purpose of this
cask. This cask is intentionally pinned (`livecheck` skipped) and is only
ever bumped by hand.

## Development

The local tap lives at `$(brew --prefix)/Library/Taps/samuelgadiel/homebrew-casks`
(or run `brew edit <cask-name>`).
