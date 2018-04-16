require 'formula'

class Libechonest < Formula
  homepage 'https://projects.kde.org/projects/playground/libs/libechonest'
  head 'git://anongit.kde.org/libechonest.git'
  url 'https://github.com/lfranchi/libechonest/archive/2.3.1.tar.gz'
  sha256 'ab961ab952df30c5234b548031594d7e281e7c9f2a9d1ce91fe5421ddde85e7c'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake", ".", "-DBUILD_WITH_QT4=OFF", *std_cmake_args
    system "make install"
  end
end
