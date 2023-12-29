class NpsSvnClient < Formula
  desc "Simple interface for performing common subversion tasks"
  homepage "https://github.com/jafl/subversion_client"
  url "https://github.com/jafl/subversion_client/releases/download/v2.0.3/nps-svn-client_2.0.3_macos13_x86_64.tar.gz"
  sha256 "2cefe000505d7d787b2af1f03cd0ae52f06711b30cc8c07b1779702ea18e80a7"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps-svn-client", "--version"
  end
end
