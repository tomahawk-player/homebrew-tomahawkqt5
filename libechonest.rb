require 'formula'

class Libechonest < Formula
  homepage 'https://projects.kde.org/projects/playground/libs/libechonest'
  head 'git://anongit.kde.org/libechonest.git'
  url 'http://files.lfranchi.com/libechonest-2.1.0.tar.bz2'
  sha1 '77b06cfb96675c4795902c68a802b71a33a0b48f'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
