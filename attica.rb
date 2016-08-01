require 'formula'

class Attica < Formula
  homepage 'http://www.kde.org/'
  head 'git://anongit.kde.org/attica.git'
  url 'http://download.kde.org/stable/frameworks/5.19/attica-5.19.0.tar.xz'
  sha256 '9b06375988eadf67da3c22c9c434adcaddfcadadff161fafee1a3327b6957b31'

  depends_on 'cmake' => :build
  depends_on 'extracmakemodules' => :build
  depends_on 'qt5'

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
