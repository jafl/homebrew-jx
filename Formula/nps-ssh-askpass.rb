class NpsSshAskpass < Formula
  desc "nps-ssh-askpass does exactly the same job as x11-ssh-askpass, but it's not as hard to compile on MacOS, because it doesn't require xmkmf."
  homepage "https://github.com/jafl/ssh-askpass"
  version ""
  url ""
  sha256 ""
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps-ssh-askpass", "--version"
  end
end
