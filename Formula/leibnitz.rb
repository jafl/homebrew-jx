class Leibnitz < Formula
  desc "Calculator and function plotter"
  homepage "https://github.com/jafl/leibnitz"
  url "https://github.com/jafl/leibnitz/releases/download/v3.0.2/leibnitz_3.0.2_macos11_x86_64.tar.gz"
  sha256 "c71e9fa2a595321d5e1d9af77e14a5220a0e89696f2f80911717a86b9a95f719"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"leibnitz", "--version"
  end
end
