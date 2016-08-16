require 'formula'

class Vlc < Formula
  homepage 'http://www.videolan.org/vlc'
  version "3.0.0-20160816-0342"
  url "http://nightlies.videolan.org/build/macosx-intel/vlc-#{version}-git.dmg", :using => NoUnzipCurlDownloadStrategy
  sha256 "47fbf0626c8845c0747f0664efafd54c6235bfad00a7872aa2bce2f2d4c646a0"
  keg_only "ships a lot of libraries that have their own formulas"

  def install
      mountPoint = `/usr/bin/hdiutil mount -nobrowse -readonly -noidme -mountrandom /tmp vlc-#{version}-git.dmg`.split(" ").last
      system "/usr/bin/ditto #{mountPoint}/VLC.app/Contents/MacOS/ #{prefix}"
      system "mkdir #{prefix}/lib/vlc"
      system "ln -s #{prefix}/plugins #{prefix}/lib/vlc/plugins"
      system "/usr/sbin/diskutil eject #{mountPoint}"
  end

end
