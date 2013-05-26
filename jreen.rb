require 'formula'

class Jreen < Formula
  head 'git://github.com/euroelessar/jreen.git'
  url 'http://download.tomahawk-player.org/libjreen-1.1.1.tar.bz2'
  md5 '180c4a3356b6d5865292e33de2a29820'

  depends_on 'cmake' => :build
  depends_on 'qt5'
#  depends_on 'tomahawk-player/tomahawkqt5/qca'
#  depends_on 'tomahawk-player/tomahawkqt5/qca-ossl'

  def install
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
