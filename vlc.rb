require 'formula'

class Vlc < Formula
  homepage 'http://www.videolan.org/vlc'
  version "3.0.0-x86_64-20160321-0110"
  url "http://nightlies.videolan.org/build/macosx-intel/vlc-#{version}.zip"
  sha256 "28ec2f11a08b2309e35ce7be83ac910e043a22801abe7d6a07e0019b02993bb4"
  keg_only "ships a lot of libraries that have their own formulas"

  def install
     system "/usr/bin/ditto ./VLC.app/Contents/MacOS/ #{prefix}"
     system "mkdir #{prefix}/lib/vlc"
     system "ln -s #{prefix}/plugins #{prefix}/lib/vlc/plugins"
  end
end
