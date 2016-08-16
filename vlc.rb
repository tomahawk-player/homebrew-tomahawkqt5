require 'formula'

class Vlc < Formula
  homepage 'http://www.videolan.org/vlc'
  version "3.0.0-20160718-0341"
  url "http://nightlies.videolan.org/build/macosx-intel/vlc-#{version}/vlc-#{version}-git.dmg", :using => NoUnzipCurlDownloadStrategy
  sha256 "d1195fff0d6cb2525908b95cff440f12ed43b5f13385baf2ed27a5edbb8e1630"
  keg_only "ships a lot of libraries that have their own formulas"

  def install
      mountPoint = `/usr/bin/hdiutil mount -nobrowse -readonly -noidme -mountrandom /tmp vlc-#{version}-git.dmg`.split(" ").last
      system "/usr/bin/ditto #{mountPoint}/VLC.app/Contents/MacOS/ #{prefix}"
      system "mkdir #{prefix}/lib/vlc"
      system "ln -s #{prefix}/plugins #{prefix}/lib/vlc/plugins"
      system "/usr/sbin/diskutil eject #{mountPoint}"
  end

end
