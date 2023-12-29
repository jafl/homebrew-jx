class SystemG < Formula
  desc "Graphical interface to the file system, similar to Mac OS 7"
  homepage "https://github.com/jafl/system-g"
  url "https://github.com/jafl/system-g/releases/download/v3.0.3/systemg_3.0.3_macos13_x86_64.tar.gz"
  sha256 "278f1c0a3d62ddcbec33154e1769bc83612c9ac860c61b5b7a9fdd8ca17e70cc"
  license "GPL-3.0-or-later"

  depends_on "git-gui" => :recommended

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"systemg", "--version"
  end
end
