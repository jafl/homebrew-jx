class JxApplicationFramework < Formula
  desc "C++ application framework for use with the X Window System"
  head "https://github.com/jafl/jx_application_framework.git", branch: "utf8"
  homepage "https://github.com/jafl/jx_application_framework"
  license "LGPL-2.1-or-later"

  depends_on "aspell" => :build
  depends_on "ace"
  depends_on "freetype"
  depends_on "gd"
  depends_on "icu4c"
  depends_on "libx11"
  depends_on "libxft"
  depends_on "libxpm"
  depends_on "pcre"
  depends_on "pkg-config"
  depends_on "re-flex"

  def install
    ENV.deparallelize
    system "./configure", "release"
    system "make", "JX_INSTALL_ROOT=#{prefix}", "default", "install"
  end

  test do
    system "true"
  end
end
