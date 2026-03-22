class Clide < Formula
  desc "High-performance drop-in replacement for Claude Code's terminal interface"
  homepage "https://github.com/LyricalString/clide"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-apple-darwin"
      sha256 "0fa3523905c74ca07455b7be33fb9249ff8f329bd484b626baf8edc694faeab8"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-apple-darwin"
      sha256 "03ae904041e66798182ca664f5e9ddbabefc496e5280ce0db2a34524b0a1406d"
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
