require 'formula'

class Sshpass < Formula
  url 'http://www.mirrorservice.org/sites/downloads.sourceforge.net/s/ss/sshpass/sshpass/1.05/sshpass-1.05.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha1 'c2e14084669be147fbd6e3532949dbfe'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end