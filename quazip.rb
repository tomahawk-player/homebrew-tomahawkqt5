require 'formula'

class Quazip < Formula
  url "https://downloads.sourceforge.net/project/quazip/quazip/0.7/quazip-0.7.tar.gz"
  sha1 "861ab4efc048fdb272161848bb8829848857ec97"
  homepage ''

  depends_on 'qt5'

  def install
    system "qmake PREFIX=#{prefix}"
    system "make"
    system "make install"
#system "install -Dm644 libquazip.a #{prefix}
  end

#  def patches
#  'https://raw.github.com/gist/1690173/965d6bde2e447f81b3a9c21dcc10675783f781cc/gistfile1.txt'
#  end
end
