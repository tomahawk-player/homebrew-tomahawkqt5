require 'formula'

class Jreen < Formula
  head 'git://github.com/euroelessar/jreen.git'
  url 'https://github.com/euroelessar/jreen/archive/v1.2.0.tar.gz'
  sha1 'a3508bd84f37cb1047924ea2ed6cf60ae00907eb'

  depends_on 'cmake' => :build
  depends_on 'gsasl'
  depends_on 'qt5'

  def install
    system "cmake -DJREEN_FORCE_QT4=OFF . #{std_cmake_parameters}"
    system "make install"
  end
end
