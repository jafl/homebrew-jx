class CodeMill < Formula
  desc "Code Mill is a plug-in for Code Crusader.  Code Mill is invoked by selecting one or more classes in the C++ class tree and then choosing the \"Create derived class\" item on the Tree menu."
  homepage "https://github.com/jafl/jx-ide"
  version "7.0.0"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code_mill_2.0.0_darwin.tar.gz"
  sha256 "aa56b7f8cc803e965e91a00e190d98def051913b2c853b713ef1be4765ebf794"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_mill", "--version"
  end
end
