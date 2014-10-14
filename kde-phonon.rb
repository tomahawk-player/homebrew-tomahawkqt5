require 'formula'

class KdePhonon < Formula
  homepage 'http://phonon.kde.org/'
  url 'ftp://ftp.kde.org/pub/kde/stable/phonon/4.8.0/phonon-4.8.0.tar.xz'
  sha1 'b01da88ddba0d2d501bf1b6bb86abbff61ab6a12'
  head 'git://anongit.kde.org/phonon.git'

  depends_on 'cmake' => :build
#  depends_on 'automoc4' => :build
  depends_on 'qt5'
  depends_on 'glib' => :build
  depends_on 'xz' => :build

  keg_only "This package is already supplied by Qt and is only needed by KDE packages."

  def install
# inreplace 'cmake/FindPhononInternal.cmake',
    system "cmake #{std_cmake_parameters} -DPHONON_NO_DBUS=TRUE -DPHONON_BUILD_PHONON4QT5=ON ."
    system "make install"
  end
end
