class Leibnitz < Formula
  desc "Leibnitz provides a calculator and the ability to plot functions."
  homepage "https://github.com/jafl/leibnitz"
  version "3.0.1"
  url "https://github.com/jafl/leibnitz/releases/download/v3.0.1/leibnitz_3.0.1_macos11_x86_64.tar.gz"
  sha256 "26bb15d62abf10037f8e497c9569fd763deddce385b6ba2e718c3ee1b751e8f4"
  license "GPL-3.0-or-later"

  def install
    # We have to link to XQuartz libraries, but homebrew build environment prohibits this.
    system "cd *-#{version}; ./install #{prefix}"
  end

  test do
    system bin/"leibnitz", "--version"
  end
end
