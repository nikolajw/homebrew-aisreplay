class Aisreplay < Formula
  desc "Replay Automatic Identification System (AIS) vessel tracking data via UDP"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.3.0"
  # Note: Release archives also contain AisFileLoader. Install with 'aisfileloader' formula separately if needed.

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.3.0/aisreplay-macos-arm64.tar.gz"
      sha256 "42262f4efa16047aa2b70d17c043e85ec0be7d86488a6a77e309e924127dc6ff"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.3.0/aisreplay-macos-x64.tar.gz"
      sha256 "8131c65a7ffa2e42ed9c2fefe48bb872acb76bb45d2c1628b4937e22563a98ca"
    end
  end

  def install
    bin.install "AisReplay"
  end

  test do
    # Test that the executable exists and can show help
    output = shell_output("#{bin}/AisReplay 2>&1 || true")
    assert_match(/Usage|Error|required/, output)
  end
end