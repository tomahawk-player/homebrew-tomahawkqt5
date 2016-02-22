require 'formula'

class Attica < Formula
  homepage 'http://www.kde.org/'
  head 'git://anongit.kde.org/attica.git'
  url 'http://download.kde.org/stable/frameworks/5.19/attica-5.19.0.tar.xz'
  sha1 'ca96082de3aaf1f800da76a42f1b7d82023edc8e'

  depends_on 'cmake' => :build
  depends_on 'extracmakemodules' => :build
  depends_on 'qt5'

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
