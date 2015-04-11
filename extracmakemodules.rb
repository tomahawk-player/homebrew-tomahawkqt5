require 'formula'

class Extracmakemodules < Formula
  head 'git://anongit.kde.org/extra-cmake-modules'
  url 'http://download.kde.org/stable/frameworks/5.9/extra-cmake-modules-5.9.0.tar.xz'
  sha1 'bbfc5d9ec13e88454f6da8c527d9bb83453bcb85'

  depends_on 'qt5'
  depends_on 'cmake'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
