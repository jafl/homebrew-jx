class CodeCrusader < Formula
  desc "IDE that integrates with Code Medic"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.1.5/code-crusader_7.1.5_macos13_x86_64.tar.gz"
  sha256 "064facf0bba469529cabca54adf99bd22f7c2c8c06542661ba8685a446f0b72d"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_crusader", "--version"
  end
end
