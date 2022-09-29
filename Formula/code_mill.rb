class CodeMill < Formula
  desc "Plug-in for Code Crusader that helps create new C++ classes"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code_mill_7.0.0_darwin.tar.gz"
  version "7.0.0"
  sha256 "8250e74feba1708d5cc8285da8ce1eb3d31bd670264448beb99923d8d1cb994b"
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
