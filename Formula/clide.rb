class Clide < Formula
  desc "High-performance drop-in replacement for Claude Code's terminal interface"
  homepage "https://github.com/LyricalString/clide"
  license "MIT"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-apple-darwin"
      sha256 "18782bd703c1592432bf1d24e094324ad66526653fc50bd925037d5f206c32d4"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-apple-darwin"
      sha256 "865a25d3bd866ea899e808017cd37e712c003b4abd51d5cc200aeaa377655a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-unknown-linux-gnu"
      sha256 "b864b37993b9c5da29929c481c94dbb95ebc7e0be7af6c517abf7be1c8e20f73"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-unknown-linux-gnu"
      sha256 "131fc42b8dd52ce59f50d3d423447083788ca26f5de5890b61622606e21de7af"
    end
  end

  def install
    binary = Dir["clide-*"].first || "clide"
    bin.install binary => "clide"
  end

  test do
    assert_match "clide", shell_output("#{bin}/clide --help")
  end
end
