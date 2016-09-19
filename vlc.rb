require 'formula'

class Vlc < Formula
  homepage 'http://www.videolan.org/vlc'
  version "3.0.0-20160919-0341"
  url "http://nightlies.videolan.org/build/macosx-intel/vlc-#{version}-git.dmg", :using => NoUnzipCurlDownloadStrategy
  sha256 "a2ba3c5a171cb33067edf53738f702f9da421855cdd8680855ea2e6995bbeb78"
  keg_only "ships a lot of libraries that have their own formulas"

  def install
      mountPoint = `/usr/bin/hdiutil mount -nobrowse -readonly -noidme -mountrandom /tmp vlc-#{version}-git.dmg`.split(" ").last
      system "/usr/bin/ditto #{mountPoint}/VLC.app/Contents/MacOS/ #{prefix}"
      system "mkdir #{prefix}/lib/vlc"
      system "ln -s #{prefix}/plugins #{prefix}/lib/vlc/plugins"
      system "/usr/sbin/diskutil eject #{mountPoint}"
  end

end
