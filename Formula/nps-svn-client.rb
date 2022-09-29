class NpsSvnClient < Formula
  desc "This X application provides a simple interface for performing common subversion tasks, e.g., updating from the repository and checking in to the repository."
  homepage "https://github.com/jafl/subversion_client"
  version "2.0.1"
  url "https://github.com/jafl/subversion_client/releases/download/v2.0.1/nps-svn-client_2.0.1_macos11_x86_64.tar.gz"
  sha256 "40caf9135adb7f8916362f1beedbae327cbe3da6a07ae8b57623be67fa485857"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps-svn-client", "--version"
  end
end
