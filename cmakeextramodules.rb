require 'formula'

class Cmakeextramodules < Formula
  head 'git://anongit.kde.org/extra-cmake-modules'

  depends_on 'cmake'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
