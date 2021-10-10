class SystemG < Formula
  desc "System G provides a graphical interface to UNIX file system, similar to Mac OS 7."
  homepage "https://github.com/jafl/system-g"
  license "GPL-3.0-or-later"
  head "https://github.com/jafl/system-g.git", branch: "main"

  depends_on "jx-application-framework"
  depends_on "git-gui"

  def install
    ENV.deparallelize
    system "./configure", "release"
    system "makemake"
    system "make", "JX_INSTALL_ROOT=#{prefix}", "default", "install"
  end

  test do
    system "true"
  end
end
