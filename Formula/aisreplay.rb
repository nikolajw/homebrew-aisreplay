class Aisreplay < Formula
  desc "Replay Automatic Identification System (AIS) vessel tracking data via UDP"
  homepage "https://github.com/nikolajw/ais-replay"
  license "MIT"
  version "0.4.3"
  # Note: AisTools suite archives contain both AisReplay and AisLoader. Install individually with their respective formulas.

  on_macos do
    on_arm do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.3/aistools-macos-arm64.tar.gz"
      sha256 "719140d950c77d944b80230d52a0e8285d476de73edfecef502e8247f03aa290"
    end
    on_intel do
      url "https://github.com/nikolajw/ais-replay/releases/download/v0.4.3/aistools-macos-x64.tar.gz"
      sha256 "18e514067ddbc7c22fd1d7186b37250d88015cd0bdcdf70e975ba7165198e736"
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