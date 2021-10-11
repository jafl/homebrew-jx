class SystemG < Formula
  desc "System G provides a graphical interface to UNIX file system, similar to Mac OS 7."
  homepage "https://github.com/jafl/system-g"
  license "GPL-3.0-or-later"
  head "https://github.com/jafl/system-g.git", branch: "main"

  depends_on "jx-application-framework" => :build
  depends_on "git-gui"

  def install
    system "./configure", "release"
    system "makemake"
    system "make"
    system "make", "JX_INSTALL_ROOT=#{prefix}", "install"
  end

  test do
    system "true"
  end
end
