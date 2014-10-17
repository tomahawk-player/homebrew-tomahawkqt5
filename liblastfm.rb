require 'formula'

class Liblastfm < Formula
  head 'git://github.com/lastfm/liblastfm.git'
  url 'https://github.com/lastfm/liblastfm/archive/1.0.9.tar.gz'
  sha1 '4a6323538a26c5ea2080a8ebe58e4407dbc42397'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  # deps for the fingerprinting lib
  # depends_on 'fftw'
  # depends_on 'libsamplerate'

  def install
    system "cmake  . -DBUILD_WITH_QT4=OFF -DBUILD_FINGERPRINT=OFF -DBUILD_TESTS=OFF #{std_cmake_parameters}"
    system "make install"
  end
end
