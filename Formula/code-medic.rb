class CodeMedic < Formula
  desc "GUI that works with gdb, lldb, and Xdebug and integrates with Code Crusader"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.1.5/code-medic_7.1.5_macos13_x86_64.tar.gz"
  sha256 "25ca565e562994160eedfb95f35fa5afb620a843b27466b952c5b4564872500f"
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
