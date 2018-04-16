require 'formula'

class Extracmakemodules < Formula
  head 'https://github.com/dschmidt/extra-cmake-modules.git'
  url 'https://github.com/KDE/extra-cmake-modules/archive/v5.35.0.tar.gz'
  sha256 '6289cb01e3c7207d6236ff282e5ca9ed8ea359512efc4e438b9e011277da1894'

  depends_on 'qt5'
  depends_on 'cmake'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
