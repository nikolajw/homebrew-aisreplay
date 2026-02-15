class Aisloader < Formula
  desc "Filter Automatic Identification System (AIS) CSV data by vessel MMSI"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.4.4"

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.4/aistools-macos-arm64.tar.gz"
      sha256 "91164c125e04dbb4370b828bd87d36cdad9e95423ceb6075dc607ebb42285bd1"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.4/aistools-macos-x64.tar.gz"
      sha256 "4172a125ae6527fa84ef4a0eb5cedc6ce8b1b0956a6da2082f72113775938755"
    end
  end

  def install
    bin.install "AisLoader"
  end

  test do
    # Test that the executable exists and can show help
    output = shell_output("#{bin}/AisLoader 2>&1 || true")
    assert_match(/Usage|Error|required/, output)
  end
end
