require 'formula'

class Extracmakemodules < Formula
  head 'https://github.com/dschmidt/extra-cmake-modules.git', :branch => "osx-outfile-name"
  url 'http://download.kde.org/stable/frameworks/5.14/extra-cmake-modules-5.14.0.tar.xz'
  sha256 'cfefdcada703b28de45ec64756ecae1dc23b305eeca506a477a648a477ceceb0'

  depends_on 'qt5'
  depends_on 'cmake'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
