class Aisreplay < Formula
  desc "Replay Automatic Identification System (AIS) vessel tracking data"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.2.0/aisreplay-macos-arm64.tar.gz"
      sha256 "68289b309f4317a22abeeda86062e57186d5f5d0e4a238b416dd86783665c372"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.2.0/aisreplay-macos-x64.tar.gz"
      sha256 "8c193f34df459c0d8d38669d29ac7464cb9e8efe02618d71161900f154178f4f"
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