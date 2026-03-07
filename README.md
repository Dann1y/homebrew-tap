# Homebrew Tap

Custom Homebrew tap for [Claude Usage Monitor](https://github.com/Dann1y/claude-usage-monitor).

## Install

```bash
brew tap Dann1y/tap
brew install --cask claude-usage-monitor
```

## Upgrade

```bash
brew upgrade --cask claude-usage-monitor
```

> **Note:** If `brew upgrade` doesn't detect new versions, run:
> ```bash
> git -C "$(brew --repository dann1y/tap)" config homebrew.forceautoupdate true
> ```
> This ensures Homebrew auto-updates this tap during `brew upgrade`.
