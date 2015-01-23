require 'formula'

class Websocketpp < Formula
  head 'git://github.com/zaphoyd/websocketpp', :branch => 'develop'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake  . #{std_cmake_parameters}"
    system "make install"
  end
end
