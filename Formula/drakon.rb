class Drakon < Formula
  desc "Drakon provides a graphical display of the processes running on your UNIX machine."
  homepage "https://github.com/jafl/drakon"
  version ""
  url ""
  sha256 ""
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"drakon", "--version"
  end
end
