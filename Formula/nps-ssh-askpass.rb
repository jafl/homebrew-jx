class NpsSshAskpass < Formula
  desc "Does exactly the same job as x11-ssh-askpass, but doesn't require xmkmf"
  homepage "https://github.com/jafl/ssh-askpass"
  url "https://github.com/jafl/ssh-askpass/releases/download/v1.2.1/nps-ssh-askpass_1.2.1_macos13_x86_64.tar.gz"
  sha256 "12cfd1b3e7cec673853f7792c1fef684c5a9ecb84f799cab2805ff97fe0d6da2"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps-ssh-askpass", "--version"
  end
end
