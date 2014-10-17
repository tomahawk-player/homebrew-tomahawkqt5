require 'formula'

class Quazip < Formula
  head "svn://svn.code.sf.net/p/quazip/code/trunk/quazip"
  # Latest release does not support Qt5
  # url "https://downloads.sourceforge.net/project/quazip/quazip/0.7/quazip-0.7.tar.gz"
  # sha1 "861ab4efc048fdb272161848bb8829848857ec97"
  homepage ''

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake . -DBUILD_WITH_QT4=OFF"
    system "make install"
  end
end
