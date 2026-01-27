# typed: false
# frozen_string_literal: true

class Lsport < Formula
  desc "A TUI for managing local and remote ports via SSH"
  homepage "https://github.com/subediparas5/lsport"
  url "https://github.com/subediparas5/lsport.git",
      tag: "v0.2.5"
  license "MIT"
  head "https://github.com/subediparas5/lsport.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lsport --version")
  end
end

