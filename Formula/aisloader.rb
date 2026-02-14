class Aisloader < Formula
  desc "Filter Automatic Identification System (AIS) CSV data by vessel MMSI"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.1/aistools-macos-arm64.tar.gz"
      sha256 "a2f40d134dc858d1adce41f3a24b2e0fd5c98fd3daad7ab7c5d8bbf329ac1c6e"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.1/aistools-macos-x64.tar.gz"
      sha256 "c04d1cb5327808fcb62d41df66784942dc362773678961c9f2768aba35d4dcd3"
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
