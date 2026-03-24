class Clide < Formula
  desc "High-performance drop-in replacement for Claude Code's terminal interface"
  homepage "https://github.com/LyricalString/clide"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-apple-darwin"
      sha256 "8b63f7b16c9e361cf4ebc74e34ec89930f84ef24e30d85dff1d2a7a23f441c2b"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-apple-darwin"
      sha256 "092573167362167c440024fea62aad498559b2aa2c1eacf83ec36f01055408c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-aarch64-unknown-linux-gnu"
      sha256 "d2cc99c225826288b2826ff9418f0f94359b20fff6dbca3f04fee29d2765e918"
    end
    on_intel do
      url "https://github.com/LyricalString/clide/releases/download/v#{version}/clide-x86_64-unknown-linux-gnu"
      sha256 "e20e56c1d28d2c031aafa7a2499f40b049dc00f287ee44552661c7c258b2d369"
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
