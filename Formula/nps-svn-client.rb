class NpsSvnClient < Formula
  desc "Simple interface for performing common subversion tasks"
  homepage "https://github.com/jafl/subversion_client"
  url "https://github.com/jafl/subversion_client/releases/download/v2.0.2/nps-svn-client_2.0.2_macos13_x86_64.tar.gz"
  sha256 "c9cf4997c1f525f5480ae83d90f2fead426a0c6f3c73846bc2f5ed68cac2970d"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps-svn-client", "--version"
  end
end
