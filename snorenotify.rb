require 'formula'

class Snorenotify < Formula
  head 'git://anongit.kde.org/snorenotify'
  url 'http://download.kde.org/stable/snorenotify/0.6.0/src/snorenotify-0.6.0.tar.xz'
  sha1 'f2c28962ba6548829ba50c906b95068d3ef7aa1f'

  depends_on 'cmake' => :build
  depends_on 'extracmakemodules' => :build
  depends_on 'qt5'
  depends_on 'snoregrowl'

  def install
  
    if MacOS.version >= 10.9
      sdk = "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk"
      cfl = "CFLAGS=\"-mmacosx-version-min=10.9\""
      cxxfl = "CXXFLAGS=\"-mmacosx-version-min=10.9\""
    elsif MacOS.version >= 10.8
      sdk = "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk"
      cfl = "CFLAGS=\"-mmacosx-version-min=10.8\""
      cxxfl = "CXXFLAGS=\"-mmacosx-version-min=10.8\""
    else
      sdk = "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk"
      cfl = "CFLAGS=\"-mmacosx-version-min=10.7\""
      cxxfl = "CXXFLAGS=\"-mmacosx-version-min=10.7\""
    end

    exp = "export #{cfl}; export #{cxxfl}; export SDKROOT=#{sdk}"

    system "#{exp}; cmake . #{std_cmake_parameters}"
    system "#{exp}; make install"
  end
end
