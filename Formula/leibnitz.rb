class Leibnitz < Formula
  desc "Leibnitz provides a calculator and the ability to plot functions."
  homepage "https://github.com/jafl/leibnitz"
  version "3.0.1"
  url "https://github.com/jafl/leibnitz/releases/download/v3.0.1/leibnitz_3.0.1_darwin.tar.gz"
  sha256 "5949f3bd6f8d4f378851c59c627ccc3cd9d8893b335a280b731ea00019aecbd0"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"leibnitz", "--version"
  end
end
