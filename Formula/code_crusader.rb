class CodeCrusader < Formula
  desc "Code Crusader is a graphical development environment for UNIX."
  homepage "https://github.com/jafl/jx-ide"
  version "7.0.0"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code_crusader_7.0.0_darwin.tar.gz"
  sha256 "3e8c9ab2bd108d5fa5e93f2f6080479e64527fed3ba71b7bdfb3b242838fdc42"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_crusader", "--version"
  end
end
