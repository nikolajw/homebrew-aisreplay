# Homebrew Tap for ais-tools

This is a Homebrew tap for [ais-tools](https://github.com/nikolajw/ais-tools), a tool that replays Automatic Identification System (AIS) vessel tracking data.

## Installation

```bash
brew tap nikolajw/ais-tools
brew install ais-tools
```

## Usage

```bash
# Replay from a CSV file
ais-streamer --file data.csv

# Download and replay from a specific date
ais-loader --date 2024-01-15

# Replay with options
ais-streamer --file data.csv --mmsi 220382000 --x-speed 10

# Replay in GPS format
ais-streamer --file data.csv --gps
```

For more information, see the [main repository](https://github.com/nikolajw/ais-tools).

## Updating

To update to the latest version:

```bash
brew upgrade ais-tools
```

## Uninstalling

```bash
brew uninstall ais-tools
brew untap nikolajw/ais-tools
```