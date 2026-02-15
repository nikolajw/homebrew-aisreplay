class Aisloader < Formula
  desc "Filter Automatic Identification System (AIS) CSV data by vessel MMSI"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.4.5"

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.5/aistools-macos-arm64.tar.gz"
      sha256 "337338c81cc8f4634012cc2cd56e594e4638c7740b07a7d3dc2fb42ec4a43111"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.5/aistools-macos-x64.tar.gz"
      sha256 "c24f009ab355490d3566d94188f42393f6286993444db17c67fb4825095866af"
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
