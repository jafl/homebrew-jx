class CodeCrusader < Formula
  desc "IDE that integrates with Code Medic"
  homepage "https://github.com/jafl/jx-ide"
  url "https://github.com/jafl/jx-ide/releases/download/v7.1.4/code-crusader_7.1.4_macos13_x86_64.tar.gz"
  sha256 "b290959493734144a6f733510e65c53909cbd25bf7346809838f68abea681403"
  license "GPL-3.0-or-later"

  depends_on "jafl/jx/code_medic" => :recommended
  depends_on "jafl/jx/code_mill" => :recommended

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"code_crusader", "--version"
  end
end
