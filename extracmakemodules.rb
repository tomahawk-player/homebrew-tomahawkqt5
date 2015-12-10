require 'formula'

class Extracmakemodules < Formula
  head 'https://github.com/dschmidt/extra-cmake-modules.git', :branch => "osx-outfile-name"
  url 'http://download.kde.org/stable/frameworks/5.14/extra-cmake-modules-5.14.0.tar.xz'
  sha1 '6e88ebe4acea14d7b8a0eaadcc3f2892d6a9b304'

  depends_on 'qt5'
  depends_on 'cmake'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
