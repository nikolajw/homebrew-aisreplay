class Aisloader < Formula
  desc "Filter Automatic Identification System (AIS) CSV data by vessel MMSI"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.4.0"

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
    bin.install "AisLoader"
  end

  test do
    # Test that the executable exists and can show help
    output = shell_output("#{bin}/AisLoader 2>&1 || true")
    assert_match(/Usage|Error|required/, output)
  end
end
