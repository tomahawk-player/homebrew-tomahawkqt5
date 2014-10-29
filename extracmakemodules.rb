require 'formula'

class Extracmakemodules < Formula
  head 'git://anongit.kde.org/extra-cmake-modules'
  url 'ftp://ftp.kde.org/pub/kde/stable/frameworks/5.3.0/extra-cmake-modules-1.3.0.tar.xz'
  md5 'a0b95a4e5ffb8bde51a95584292b03ed'

  depends_on 'qt5'
  depends_on 'cmake'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
