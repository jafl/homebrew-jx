class CodeCrusader < Formula
  desc "Code Crusader is a graphical development environment for UNIX."
  homepage "https://github.com/jafl/jx-ide"
  version "7.0.0"
  url "https://github.com/jafl/jx-ide/releases/download/v7.0.0/code_crusader_7.0.0_darwin.tar.gz"
  sha256 "c43ddcd3d38cc2e32f0613e9264fb248f8b63e6e8c89dc634211d46dfb8a86d3"
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
