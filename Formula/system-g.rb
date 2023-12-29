class SystemG < Formula
  desc "Graphical interface to the file system, similar to Mac OS 7"
  homepage "https://github.com/jafl/system-g"
  url "https://github.com/jafl/system-g/releases/download/v3.0.1/systemg_3.0.1_macos13_x86_64.tar.gz"
  sha256 "0ffd67229c73a553ed6c47f6fb4a9bd25dcd2f7b25a463d7c4418d1656041854"
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
