require "formula"

class CmuPocketsphinx < Formula
  homepage 'http://cmusphinx.sourceforge.net/'
  head "https://github.com/cmusphinx/pocketsphinx.git"

  depends_on 'pkg-config' => :build
  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build

  depends_on 'watsonbox/cmu-sphinx/cmu-sphinxbase'

  def install
    system "./autogen.sh"
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end