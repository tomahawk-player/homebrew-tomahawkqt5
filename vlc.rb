require 'formula'

class Vlc < Formula
  homepage 'http://www.videolan.org/vlc'
  version "2.2.2"
  url "http://download.videolan.org/pub/videolan/vlc/#{version}/macosx/vlc-#{version}.dmg", :using => NoUnzipCurlDownloadStrategy
  sha256 "0a68188a9d193a4d4614d28366a052355289a064571b79d0890e045caba5384a"
  keg_only "ships a lot of libraries that have their own formulas"

  def install
     mountPoint = `/usr/bin/hdiutil mount -nobrowse -readonly -noidme -mountrandom /tmp vlc-#{version}.dmg`.split(" ").last
     system "/usr/bin/ditto #{mountPoint}/VLC.app/Contents/MacOS/ #{prefix}"
     system "mkdir #{prefix}/lib/vlc"
     system "ln -s #{prefix}/plugins #{prefix}/lib/vlc/plugins"
     system "/usr/sbin/diskutil eject #{mountPoint}"
  end
end
