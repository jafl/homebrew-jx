class Drakon < Formula
  desc "Drakon provides a graphical display of the processes running on your UNIX machine."
  homepage "https://github.com/jafl/drakon"
  version "2.0.0"
  url "https://github.com/jafl/drakon/releases/download/v2.0.0/drakon_2.0.0_darwin.tar.gz"
  sha256 "ce0be1182aaf1b6ed3e0f112a9228bedcab1f76e6dd3ac2e95d5dce8e19c37c7"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"drakon", "--version"
  end
end
