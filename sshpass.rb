require 'formula'

class Sshpass < Formula
  url 'http://sourceforge.net/projects/sshpass/files/sshpass/1.05/sshpass-1.05.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  md5 'c2e14084669be147fbd6e3532949dbfe'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end