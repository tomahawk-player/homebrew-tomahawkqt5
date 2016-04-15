require 'formula'

class Qt5webkit < Formula
  url 'http://download.qt.io/community_releases/5.6/5.6.0/qtwebkit-opensource-src-5.6.0.tar.xz'
  sha256 '9ca72373841f3a868a7bcc696956cdb0ad7f5e678c693659f6f0b919fdd16dfe'

  depends_on 'qt5'

  def install
    system "qmake"
    system "make"
    system "make install"
  end
end
