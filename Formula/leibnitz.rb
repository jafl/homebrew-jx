class Leibnitz < Formula
  desc "Calculator and function plotter"
  homepage "https://github.com/jafl/leibnitz"
  url "https://github.com/jafl/leibnitz/releases/download/v3.0.3/leibnitz_3.0.3_macos13_x86_64.tar.gz"
  sha256 "b2dc38911192f4dabcf90060582d8a12fd398b6d152249cbc892887c6fd91f37"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"leibnitz", "--version"
  end
end
