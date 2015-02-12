require 'formula'

class Libechonest < Formula
  homepage 'https://projects.kde.org/projects/playground/libs/libechonest'
  head 'git://anongit.kde.org/libechonest.git'
  url 'http://files.lfranchi.com/libechonest-2.3.1.tar.bz2'
  sha1 '9d7245c71e707651a7054ce6f0d90b9a62004b23'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake", ".", "-DBUILD_WITH_QT4=OFF", *std_cmake_args
    system "make install"
  end
end
