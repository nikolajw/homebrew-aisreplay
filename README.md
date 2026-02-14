# Homebrew Tap for AisReplay

This is a Homebrew tap for [AisReplay](https://github.com/nikolajw/ais-replay), a .NET application that replays Automatic Identification System (AIS) vessel tracking data.

## Installation

```bash
brew tap nikolajw/aisreplay
brew install aisreplay
```

## Usage

```bash
# Replay from a CSV file
aisreplay --file data.csv

# Download and replay from a specific date
aisreplay --date 2024-01-15

# Replay with options
aisreplay --file data.csv --mmsi 220382000 --x-speed 10 --skip-moored

# Replay in GPS format
aisreplay --file data.csv --gps
```

For more information, see the [main repository](https://github.com/nikolajw/ais-replay).

## Updating

To update to the latest version:

```bash
brew upgrade aisreplay
```

## Uninstalling

```bash
brew uninstall aisreplay
brew untap nikolajw/aisreplay
```