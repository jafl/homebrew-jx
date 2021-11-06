class NpsSvnClient < Formula
  desc "This X application provides a simple interface for performing common subversion tasks, e.g., updating from the repository and checking in to the repository."
  homepage "https://github.com/jafl/subversion_client"
  version "2.0.0"
  url "https://github.com/jafl/subversion_client/releases/download/v2.0.0/nps_svn_client_2.0.0_darwin.tar.gz"
  sha256 "5ee54bf62f5de06c5bdf34464e84f3790db7915415241041b12d7e612e804c89"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps_svn_client", "--version"
  end
end
