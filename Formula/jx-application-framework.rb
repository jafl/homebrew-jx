class JxApplicationFramework < Formula
  desc "JX is a C++ application framework for use with the X Window System"
  homepage "https://github.com/jafl/jx_application_framework"
  license "LGPL-2.1-or-later"
  head "https://github.com/jafl/jx_application_framework.git", branch: "utf8"

  depends_on "pkg-config" => :build
  depends_on "ace"        => :build
  depends_on "icu4c"      => :build
  depends_on "pcre"       => :build
  depends_on "re-flex"    => :build
  depends_on "gd"         => :build
  depends_on "libx11"     => :build
  depends_on "libxft"     => :build
  depends_on "libxpm"     => :build
  depends_on "freetype"   => :build
  depends_on "aspell"     => :build

  def install
    ENV.deparallelize
    system "./configure", "release"
    system "make", "JX_INSTALL_ROOT=#{prefix}", "default", "install"
  end

  test do
    system "true"
  end
end
