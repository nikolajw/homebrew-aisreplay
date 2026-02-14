class Aisreplay < Formula
  desc "Replay Automatic Identification System (AIS) vessel tracking data via UDP"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.3.4"
  # Note: Release archives also contain AisFileLoader. Install with 'aisfileloader' formula separately if needed.

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.3.4/aisreplay-macos-arm64.tar.gz"
      sha256 "4796492c57a1263daeba1cffded24aaef3e053a661d5c89760c31e68f524860d"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.3.4/aisreplay-macos-x64.tar.gz"
      sha256 "7267351bb7d850cc669ee389502222a1bc12cace0594a003bd1658c308694158"
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