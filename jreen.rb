require 'formula'

class Jreen < Formula
  head 'git://github.com/euroelessar/jreen.git'
  url 'https://github.com/euroelessar/jreen/archive/v1.2.0.tar.gz'
  md5 'a7d2480c789173c4f836c14a97f66b51'

  depends_on 'cmake' => :build
  depends_on 'gsasl'
  depends_on 'qt5'

  def install
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
