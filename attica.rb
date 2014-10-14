require 'formula'

class Attica < Formula
  homepage 'http://www.kde.org/'
  head 'git://anongit.kde.org/attica.git'
  url 'ftp://ftp.kde.org/pub/kde/stable/attica/attica-0.4.0.tar.bz2'
  md5 '2de3a49d79884ed3ce9df491bf35a86b'

  depends_on 'cmake' => :build
  depends_on 'extracmakemodules' => :build
  depends_on 'qt5'

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
