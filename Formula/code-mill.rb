class CodeMill < Formula
  desc "Plug-in for Code Crusader that helps create new C++ classes"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code-mill_7.0.0_macos13_x86_64.tar.gz"
  sha256 "bdd25a7253e2920bfe84f0b4f9ac1c17631376f2490fdc33f3dde79b519e6619"
  license "GPL-3.0-or-later"

  depends_on "jafl/jx/code_crusader"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_mill", "--version"
  end
end
