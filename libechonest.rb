require 'formula'

class Libechonest < Formula
  homepage 'https://projects.kde.org/projects/playground/libs/libechonest'
  head 'git://anongit.kde.org/libechonest.git'
  url 'http://files.lfranchi.com/libechonest-2.3.0.tar.bz2'
  sha1 'cf1b279c96f15c87c36fdeb23b569a60cdfb01db'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake", ".", "-DBUILD_WITH_QT4=OFF", *std_cmake_args
    system "make install"
  end
end
