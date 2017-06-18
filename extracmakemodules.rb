require 'formula'

class Extracmakemodules < Formula
  head 'https://github.com/dschmidt/extra-cmake-modules.git'
  url 'https://github.com/KDE/extra-cmake-modules/archive/v5.35.0.tar.gz'
  sha256 'b6f84775d029208bdfed0a725952bcb674ddee50598f46102fc575d2ddb6c098'

  depends_on 'qt5'
  depends_on 'cmake'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
