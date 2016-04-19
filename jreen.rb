require 'formula'

class Jreen < Formula
  head 'git://github.com/euroelessar/jreen.git'
  url 'https://github.com/euroelessar/jreen/archive/v1.2.0.tar.gz'
  sha1 'a3508bd84f37cb1047924ea2ed6cf60ae00907eb'

  depends_on 'cmake' => :build
  depends_on 'gsasl'
  depends_on 'qt5'

  def install
    system "cmake -DJREEN_FORCE_QT4=OFF . #{std_cmake_parameters}"
    system "make install"
  end
  patch do
      url "http://pkgs.fedoraproject.org/cgit/rpms/jreen.git/plain/jreen-1.2.1-qt56.patch?id=bd9ec5ded9ecf3479cfbe1068f99a7fb16a4286e"
      sha256 "60222d8c51bfe316ffe05d09d26651ce8c76552248069eb8439fba0ba7b7ac57"
  end
end
