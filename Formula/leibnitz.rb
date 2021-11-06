class Leibnitz < Formula
  desc "Leibnitz provides a calculator and the ability to plot functions."
  homepage "https://github.com/jafl/leibnitz"
  version "3.0.1"
  url "https://github.com/jafl/leibnitz/releases/download/v3.0.1/leibnitz_3.0.1_darwin.tar.gz"
  sha256 "2fbd4c2c344c187d55322ce61d1b3241b66523ea9de2c81d53e0835eabdc3748"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"leibnitz", "--version"
  end
end
