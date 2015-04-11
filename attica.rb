require 'formula'

class Attica < Formula
  homepage 'http://www.kde.org/'
  head 'git://anongit.kde.org/attica.git'
  url 'http://download.kde.org/stable/frameworks/5.9/attica-5.9.0.tar.xz'
  sha1 'f4f788d871da310d4b659ac13d50c79e33791cc7'

  depends_on 'cmake' => :build
  depends_on 'extracmakemodules' => :build
  depends_on 'qt5'

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
