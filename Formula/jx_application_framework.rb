# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class JxApplicationFramework < Formula
  desc "JX is a C++ application framework and widget library (SDK) for use with the X Window System."
  homepage "https://github.com/jafl/jx_application_framework.git"
  license "LGPL"
  head "https://github.com/jafl/jx_application_framework.git", branch: "utf8"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", "release"
    system "./make", "-DJX_INSTALL_ROOT=#{prefix}"
  end

  test do
    # all tests are run during the build
    system "true"
  end
end
