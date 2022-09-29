class CodeMill < Formula
  desc "Code Mill is a plug-in for Code Crusader.  Code Mill is invoked by selecting one or more classes in the C++ class tree and then choosing the \"Create derived class\" item on the Tree menu."
  homepage "https://github.com/jafl/jx-ide"
  version "7.0.0"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code_mill_7.0.0_darwin.tar.gz"
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
