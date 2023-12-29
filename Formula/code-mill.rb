class CodeMill < Formula
  desc "Plug-in for Code Crusader that helps create new C++ classes"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.1.4/code-mill_7.1.4_macos13_x86_64.tar.gz"
  sha256 "9318eae629629f686c1e5738792c2d8381a5fe14c3973f6a6c83251a024c721a"
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
