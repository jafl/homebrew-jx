class Drakon < Formula
  desc "Drakon provides a graphical display of the processes running on your UNIX machine."
  homepage "https://github.com/jafl/drakon"
  version "2.0.0"
  url "https://github.com/jafl/drakon/releases/download/v2.0.0/drakon_2.0.0_darwin.tar.gz"
  sha256 "a3a2e3670372fbd85cf9d6651cc80d35890b8970d9c50398a3d86a0d7e008049"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"drakon", "--version"
  end
end
