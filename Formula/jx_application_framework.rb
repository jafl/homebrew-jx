class JxApplicationFramework < Formula
  desc "JX is a C++ application framework for use with the X Window System"
  homepage "https://github.com/jafl/jx_application_framework"
  license "LGPL-2.1-or-later"
  head "https://github.com/jafl/jx_application_framework.git", branch: "utf8"

  depends_on "ace"
  depends_on "icu4c"
  depends_on "pcre"
  depends_on "re-flex"
  depends_on "gd"
  depends_on "pkg-config"

  def install
    ENV.deparallelize
    system "./configure", "release"
    system "make", "JX_INSTALL_ROOT=#{prefix}"
  end

  test do
    system "true"
  end
end
