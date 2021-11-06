class SystemG < Formula
  desc "System G provides a graphical interface to UNIX file system, similar to Mac OS 7."
  homepage "https://github.com/jafl/system-g"
  version "3.0.0"
  url "https://github.com/jafl/system-g/releases/download/v3.0.0/systemg_3.0.0_darwin.tar.gz"
  sha256 "295075de2cad15258e4f776d993f9cfcb2c82980f0600cc9b2969f956013f112"
  license "GPL-3.0-or-later"

  depends_on "git-gui"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"systemg", "--version"
  end
end
