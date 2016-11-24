require 'formula'

class Attica < Formula
  homepage 'http://www.kde.org/'
  head 'git://anongit.kde.org/attica.git'
  url 'http://download.kde.org/stable/frameworks/5.28/attica-5.28.0.tar.xz'
  sha256 '7a527c59a8137c7d759bcbbdad3e8dd5b4c94869f26e9d282a354cae50dc6693'

  depends_on 'cmake' => :build
  depends_on 'extracmakemodules' => :build
  depends_on 'qt5'

  def install
    system "cmake #{std_cmake_args} ."
    system "make install"
  end
end
