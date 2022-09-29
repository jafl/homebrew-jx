class SystemG < Formula
  desc "Graphical interface to the file system, similar to Mac OS 7"
  homepage "https://github.com/jafl/system-g"
  url "https://github.com/jafl/system-g/releases/download/v3.0.0/systemg_3.0.0_darwin.tar.gz"
  version "3.0.0"
  sha256 "41899e9a2dbd8f0e24f754778ec5753f821459abc6ce3005f80c217eda693af6"
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
