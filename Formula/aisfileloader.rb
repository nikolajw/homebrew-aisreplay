class Aisfileloader < Formula
  desc "Filter Automatic Identification System (AIS) CSV data by vessel MMSI"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.3.4"

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
    bin.install "AisFileLoader"
  end

  test do
    # Test that the executable exists and can show help
    output = shell_output("#{bin}/AisFileLoader 2>&1 || true")
    assert_match(/Usage|Error|required/, output)
  end
end
