class SystemG < Formula
  desc "System G provides a graphical interface to UNIX file system, similar to Mac OS 7."
  homepage "https://github.com/jafl/system-g"
  license "GPL-3.0-or-later"
  head "https://github.com/jafl/system-g.git", branch: "main"

  # need to explicitly depend on icu4c and freetype to keep their paths in -I

  depends_on "coreutils" => :build
  depends_on "jx-application-framework" => :build
  depends_on "icu4c" => :build
  depends_on "freetype" => :build
  depends_on "git-gui"

  def install
    ENV.deparallelize
    # remove tcl-tk path which contains private X11 header files
    ENV["HOMEBREW_INCLUDE_PATHS"]="/usr/local/opt/icu4c/include"
    system "env"
    system "./configure", "release"
    system "makemake"
    system "make"
    system "make", "JX_INSTALL_ROOT=#{prefix}", "install"
  end

  test do
    system bin/"systemg", "--version"
  end
end
