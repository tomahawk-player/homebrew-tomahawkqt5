require 'formula'

class Websocketpp < Formula
  head 'git://github.com/zaphoyd/websocketpp', :branch => 'develop'

  stable do
    url "https://github.com/zaphoyd/websocketpp/archive/0.6.0.tar.gz"
    sha256 "688c52772b90a4694496c08f4ec1d712e24af17dc060d3392f0f3b4e18062898"
  end

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake  . #{std_cmake_args}"
    system "make install"
  end
end
