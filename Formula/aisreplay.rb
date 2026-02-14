class Aisreplay < Formula
  desc "Replay Automatic Identification System (AIS) vessel tracking data via UDP"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.4.0"
  # Note: AisTools suite archives contain both AisReplay and AisLoader. Install individually with their respective formulas.

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.0/aistools-macos-arm64.tar.gz"
      sha256 "39dfe125b83373ed98eb43d0e1b18aa0523261af865ed9100d75d284258a1bee"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.0/aistools-macos-x64.tar.gz"
      sha256 "6382fcbd18949684449808118205be0f74c49a230c27d5f85e68fc9aeb48f82f"
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