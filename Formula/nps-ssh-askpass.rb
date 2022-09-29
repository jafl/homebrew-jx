class NpsSshAskpass < Formula
  desc "nps-ssh-askpass does exactly the same job as x11-ssh-askpass, but it's not as hard to compile on MacOS, because it doesn't require xmkmf."
  homepage "https://github.com/jafl/ssh-askpass"
  version "1.2.0"
  url "https://github.com/jafl/ssh-askpass/releases/download/v1.2.0/nps-ssh-askpass_1.2.0_macos_x86_64.tar.gz"
  sha256 "958365631201553e824e9ed1f5ad204808dcd5620fff39467a815203eddab83f"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"nps-ssh-askpass", "--version"
  end
end
