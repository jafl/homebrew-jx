class NpsSshAskpass < Formula
  desc "Does exactly the same job as x11-ssh-askpass, but doesn't require xmkmf"
  homepage "https://github.com/jafl/ssh-askpass"
  url "https://github.com/jafl/ssh-askpass/releases/download/v1.2.2/nps-ssh-askpass_1.2.1_macos13_x86_64.tar.gz"
  sha256 "21d8c456840d83ae95108aa94dfe8a38c34dd7950a654cd4a91527bb1b637e51"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps-ssh-askpass", "--version"
  end
end
