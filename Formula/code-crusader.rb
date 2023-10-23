class CodeCrusader < Formula
  desc "IDE that integrates with Code Medic"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code-crusader_7.0.0_macos13_x86_64.tar.gz"
  sha256 "eba7897708df5ff6776eabbdcc16f13c9d8b8448e9fd9fcb5509b38dc183ac33"
  license "GPL-3.0-or-later"

  depends_on "jafl/jx/code_medic" => :recommended
  depends_on "jafl/jx/code_mill" => :recommended

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_crusader", "--version"
  end
end
