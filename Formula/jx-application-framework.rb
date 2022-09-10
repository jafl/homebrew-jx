class JxApplicationFramework < Formula
  desc "JX is a C++ application framework for use with the X Window System"
  homepage "https://github.com/jafl/jx_application_framework"
  license "LGPL-2.1-or-later"
  head "https://github.com/jafl/jx_application_framework.git", branch: "utf8"

  def install
    system "./configure", "release"
    system "./make", "-DJX_INSTALL_ROOT=#{prefix}"
  end

  test do
    system "true"
  end
end
