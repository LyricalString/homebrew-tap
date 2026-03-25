class Clide < Formula
  desc "High-performance drop-in replacement for Claude Code's terminal interface"
  homepage "https://github.com/LyricalString/clide"
  license "MIT"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-apple-darwin"
      sha256 "9a87c7ac3f1b0cf3ab6ede93b6c6ce46721e4f536b9d951d38934bc68cf108a6"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-apple-darwin"
      sha256 "1cc8608316bf31b1ffc521c0ca89cfc80f0015e711d4d15f3198efd4c229144e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-unknown-linux-gnu"
      sha256 "64330297dff06eaf5418c64b96a12a5ebe16e932301a7bc25a768c6dc6971fba"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-unknown-linux-gnu"
      sha256 "dc71560b0c11f5613983c3b4b221cdf24bf20cce09c3844c7c4da8c716d7327c"
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
