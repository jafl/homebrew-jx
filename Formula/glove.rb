class Glove < Formula
  desc "Scientific data analysis"
  homepage "https://github.com/jafl/glove"
  url "https://github.com/jafl/glove/releases/download/v2.2.0/glove_2.2.0_macos13_x86_64.tar.gz"
  sha256 "fe197850d3cf00cfb55c0092726121e5fbbde7d4d63f885fd73735fc61993a33"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"glove", "--version"
  end
end
