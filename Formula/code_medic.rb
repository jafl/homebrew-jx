class CodeMedic < Formula
  desc "Code Medic is a graphical debugging environment for UNIX that works with gdb, lldb, and Xdebug."
  homepage "https://github.com/jafl/jx-ide"
  version "7.0.0"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code_medic_5.0.1_darwin.tar.gz"
  sha256 "59cc5f3c5ac672e244508a19cdc1856173afedd78f8f0e2649222f63cd377b00"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_medic", "--version"
  end
end
