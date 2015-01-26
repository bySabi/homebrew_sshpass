require 'formula'

class Sshpass < Formula
  url 'http://www.mirrorservice.org/sites/downloads.sourceforge.net/s/ss/sshpass/sshpass/1.05/sshpass-1.05.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha1 '2df7de8184d71bec0ae943dca91b9b8b13e430ed'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end