require 'formula'

class Vlc < Formula
  homepage 'http://www.videolan.org/vlc'
  version "2.2.4"
  url "http://download.videolan.org/pub/videolan/vlc/#{version}/macosx/vlc-#{version}.dmg", :using => NoUnzipCurlDownloadStrategy
  sha256 "fd071b9817c9efccac5a144d69893a4a5323cbde4a74d5691c3cf3ab979d4160"
  keg_only "ships a lot of libraries that have their own formulas"

  def install
     mountPoint = `/usr/bin/hdiutil mount -nobrowse -readonly -noidme -mountrandom /tmp vlc-#{version}.dmg`.split(" ").last
     system "/usr/bin/ditto #{mountPoint}/VLC.app/Contents/MacOS/ #{prefix}"
     system "mkdir #{prefix}/lib/vlc"
     system "ln -s #{prefix}/plugins #{prefix}/lib/vlc/plugins"
     system "/usr/sbin/diskutil eject #{mountPoint}"
  end
end
