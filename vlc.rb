require 'formula'

class Vlc < Formula
  homepage 'http://www.videolan.org/vlc'
  version "2.2.1"
  url "http://download.videolan.org/pub/videolan/vlc/#{version}/macosx/vlc-#{version}.dmg", :using => NoUnzipCurlDownloadStrategy
  sha256 "ef881ca19fc7cc6b7c54699c99c064b9a5d553aa4181d1d1e185758d32405740"
  keg_only "ships a lot of libraries that have their own formulas"

  def install
     mountPoint = `/usr/bin/hdiutil mount -nobrowse -readonly -noidme -mountrandom /tmp vlc-#{version}.dmg`.split(" ").last
     system "/usr/bin/ditto #{mountPoint}/VLC.app/Contents/MacOS/ #{prefix}"
     system "mkdir #{prefix}/lib/vlc"
     system "ln -s #{prefix}/plugins #{prefix}/lib/vlc/plugins"
     system "/usr/sbin/diskutil eject #{mountPoint}"
  end
end
