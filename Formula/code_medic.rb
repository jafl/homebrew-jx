class CodeMedic < Formula
  desc "GUI that works with gdb, lldb, and Xdebug and integrates with Code Crusader"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code_medic_7.0.0_darwin.tar.gz"
  sha256 "575afaf49112f3d1354466a21332c7afd85662936d89da4e291b42710c30ef90"
  license "GPL-3.0-or-later"

  depends_on "jafl/jx/code_crusader" => :optional

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_medic", "--version"
  end
end
