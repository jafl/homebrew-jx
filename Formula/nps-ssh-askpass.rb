class NpsSshAskpass < Formula
  desc "Does exactly the same job as x11-ssh-askpass, but doesn't require xmkmf"
  homepage "https://github.com/jafl/ssh-askpass"
  url "https://github.com/jafl/ssh-askpass/releases/download/v1.2.2/nps-ssh-askpass_1.2.2_macos13_x86_64.tar.gz"
  sha256 "57f344c28b9dbf86e6606758907fe52707f9ca4c00b2f3026c20bbff3f6bdd53"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps-ssh-askpass", "--version"
  end
end
