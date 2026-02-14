class Aisreplay < Formula
  desc "Replay Automatic Identification System (AIS) vessel tracking data"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.1.2/aisreplay-macos-arm64.tar.gz"
      sha256 "2c679595def75929ca421f29414df329f10142bce6cfdd5587b7bf5f7bf82837"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.1.2/aisreplay-macos-x64.tar.gz"
      sha256 "4b8e81eac7314014984199b8c6399718e9b086b29e0cebaaed47f503a10168f6"
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