class Gale < Formula
  desc "Extremely fast CSS linter, drop-in replacement for Stylelint"
  homepage "https://github.com/LyricalString/gale"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/LyricalString/gale/releases/download/v#{version}/gale-aarch64-apple-darwin"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/LyricalString/gale/releases/download/v#{version}/gale-x86_64-apple-darwin"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LyricalString/gale/releases/download/v#{version}/gale-aarch64-unknown-linux-gnu"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/LyricalString/gale/releases/download/v#{version}/gale-x86_64-unknown-linux-gnu"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = Dir["gale-*"].first || "gale"
    bin.install binary => "gale"
  end

  test do
    assert_match "gale", shell_output("#{bin}/gale --help")
  end
end
