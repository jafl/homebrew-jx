class CodeMill < Formula
  desc "Plug-in for Code Crusader that helps create new C++ classes"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.1.5/code-mill_7.1.5_macos13_x86_64.tar.gz"
  sha256 "76b6b8ce7ccdff68544d3513f08b092198d0861f606e50f3bf1dd7b06b961999"
  license "GPL-3.0-or-later"

  depends_on "jafl/jx/code-crusader"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_mill", "--version"
  end
end
