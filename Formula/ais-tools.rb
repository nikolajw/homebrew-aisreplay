class AisTools < Formula
  desc "AIS vessel tracking tools - AisStreamer, AisLoader, and AisSimulator"
  homepage "https://github.com/nikolajw/ais-tools"
  license "MIT"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-tools/releases/download/v0.5.0/aistools-macos-arm64.tar.gz"
      sha256 "2d8a1c3376575508281f8cadb4e4331e27aba562a579afc361bf11fb9f451129"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-tools/releases/download/v0.5.0/aistools-macos-x64.tar.gz"
      sha256 "b9118b8c72635178cd03286c8ee848ca815ad6d0a68e5a0b924197932029e969"
    end
  end

  def install
    bin.install "ais-streamer"
    bin.install "ais-loader"
    bin.install "ais-simulator"
  end

  test do
    # Test ais-streamer
    output = shell_output("#{bin}/ais-streamer 2>&1 || true")
    assert_match(/Usage|Error|required/, output)

    # Test ais-loader
    output = shell_output("#{bin}/ais-loader 2>&1 || true")
    assert_match(/Usage|Error|required/, output)

    # Test ais-simulator
    output = shell_output("#{bin}/ais-simulator 2>&1 || true")
    assert_match(/Usage|Error|required/, output)
  end
end