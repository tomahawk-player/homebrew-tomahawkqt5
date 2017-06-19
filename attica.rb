require 'formula'

class Attica < Formula
  homepage 'http://www.kde.org/'
  head 'https://github.com/KDE/attica.git'
  url 'https://github.com/KDE/attica/archive/v5.35.0.tar.gz'
  sha256 'cf80c357da8bbe71f16c16aa89f9b2e06a1071583b93e416764eaca9ae7e86be'

  depends_on 'cmake' => :build
  depends_on 'extracmakemodules' => :build
  depends_on 'qt5'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
