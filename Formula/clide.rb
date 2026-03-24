class Clide < Formula
  desc "High-performance drop-in replacement for Claude Code's terminal interface"
  homepage "https://github.com/LyricalString/clide"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-apple-darwin"
      sha256 "1998be5e44416414e367da7d83294a163e6dd4e2e0322cc3bcc9e10ac6aa1480"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-apple-darwin"
      sha256 "ab0525f95883eb0b7a64908bf2de881d397dab524c44776317bc16e6b5fc3f10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-unknown-linux-gnu"
      sha256 "ab8c4f9df03397f3b7c78e9c1f5be8dee09570d509a457662bd7fe5c83d8a432"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-unknown-linux-gnu"
      sha256 "4425e6dd21386d0ec92b5eda5779ec9a003025a0ba2e9215f7552d973bea3a35"
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
