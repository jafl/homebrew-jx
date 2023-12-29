class Leibnitz < Formula
  desc "Calculator and function plotter"
  homepage "https://github.com/jafl/leibnitz"
  url "https://github.com/jafl/leibnitz/releases/download/v3.0.4/leibnitz_3.0.4_macos13_x86_64.tar.gz"
  sha256 "909de180f5e85687365b45931f253c5ffb8489504b9ebb7c6f47946e9bfdfa1a"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"leibnitz", "--version"
  end
end
