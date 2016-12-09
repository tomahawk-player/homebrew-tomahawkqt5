require 'formula'

class Vlc < Formula
  homepage 'http://www.videolan.org/vlc'
  version "3.0.0-20161204-0246"
  url "http://nightlies.videolan.org/build/macosx-intel/vlc-#{version}-git.dmg", :using => NoUnzipCurlDownloadStrategy
  sha256 "233269fa3f0e669aedee10e1f801a3151d00da327266fed5f213933928796c45"
  keg_only "ships a lot of libraries that have their own formulas"

  def install
      mountPoint = `/usr/bin/hdiutil mount -nobrowse -readonly -noidme -mountrandom /tmp vlc-#{version}-git.dmg`.split(" ").last
      system "/usr/bin/ditto #{mountPoint}/VLC.app/Contents/MacOS/ #{prefix}"
      system "mkdir #{prefix}/lib/vlc"
      system "ln -s #{prefix}/plugins #{prefix}/lib/vlc/plugins"
      system "/usr/sbin/diskutil eject #{mountPoint}"
  end

end
