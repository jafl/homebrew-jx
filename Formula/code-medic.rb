class CodeMedic < Formula
  desc "GUI that works with gdb, lldb, and Xdebug and integrates with Code Crusader"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code-medic_7.0.0_macos13_x86_64.tar.gz"
  sha256 "f8edb05925248572da157e8cb5046c272b698d7053465b449c7999e5774bd046"
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
