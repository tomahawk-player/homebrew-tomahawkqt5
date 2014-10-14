require 'formula'

class Attica < Formula
  homepage 'http://www.kde.org/'
  head 'git://anongit.kde.org/attica.git'
  url 'ftp://ftp.kde.org/pub/kde/stable/frameworks/5.3.0/attica-5.3.0.tar.xz'
  md5 '194b9a2141a2a4e23f2bc6dde92178f5'

  depends_on 'cmake' => :build
  depends_on 'extracmakemodules' => :build
  depends_on 'qt5'

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
