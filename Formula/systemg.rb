class Systemg < Formula
  desc "Graphical interface to the file system, similar to Mac OS 7"
  homepage "https://github.com/jafl/system-g"
  url "https://github.com/jafl/system-g/releases/download/v3.0.1/systemg_3.0.1_macos11_x86_64.tar.gz"
  sha256 "b0959c57eb63219ea174f96f617110b6343d81ea3180099319bc1535b0e6540b"
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
