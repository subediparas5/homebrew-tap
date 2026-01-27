# typed: false
# frozen_string_literal: true

class Lsport < Formula
  desc "A TUI for managing local and remote ports via SSH"
  homepage "https://github.com/subediparas5/lsport"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subediparas5/lsport/releases/download/v0.1.1/lsport-linux-x86_64.tar.gz"
      sha256 "e638e7180ea4b362cdc0c871cd5481c2f29a1ee71f1837a6efe363adc1ec1d98"
    else
      url "https://github.com/subediparas5/lsport/releases/download/v#{version}/lsport-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_X86_64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/subediparas5/lsport/releases/download/v#{version}/lsport-linux-aarch64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    else
      url "https://github.com/subediparas5/lsport/releases/download/v#{version}/lsport-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_64"
    end
  end

  def install
    bin.install "lsport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lsport --version")
  end
end

