class AisTools < Formula
  desc "AIS vessel tracking tools - AisStreamer, AisLoader, and AisSimulator"
  homepage "https://github.com/nikolajw/ais-tools"
  license "MIT"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-tools/releases/download/v0.5.1/aistools-macos-arm64.tar.gz"
      sha256 "91b079731dd9046d1d65f29949761cfba847f21ca1ac2798a828e00aca05cbf2"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-tools/releases/download/v0.5.1/aistools-macos-x64.tar.gz"
      sha256 "15fdef068a59091808f8eedebaeb8c49dc7e66a43f58690be9100fbf3688738f"
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