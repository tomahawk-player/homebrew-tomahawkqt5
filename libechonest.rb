require 'formula'

class Libechonest < Formula
  homepage 'https://projects.kde.org/projects/playground/libs/libechonest'
  head 'git://anongit.kde.org/libechonest.git'
  url 'http://files.lfranchi.com/libechonest-2.3.1.tar.bz2'
  sha256 '56756545fd1cb3d9067479f52215b6157c1ced2bc82b895e72fdcd9bebb47889'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake", ".", "-DBUILD_WITH_QT4=OFF", *std_cmake_args
    system "make install"
  end
end
