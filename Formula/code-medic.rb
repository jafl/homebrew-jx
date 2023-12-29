class CodeMedic < Formula
  desc "GUI that works with gdb, lldb, and Xdebug and integrates with Code Crusader"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.1.4/code-medic_7.1.4_macos13_x86_64.tar.gz"
  sha256 "4682ab0fba03fabef8807db0cc5ccb3b8fca6f59fbebb87076fe24e7cf52f30f"
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
