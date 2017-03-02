

class Resume < Formula
  desc ""
  homepage ""
  url "https://github.com/privatezero/Resume/archive/0.0.01.zip"
  head "https://github.com/privatezero/Resume.git"
  sha256 "10e68724df3e47dfd4bfff614021bded0a9e0220e4c20950743ba813e915df47"
  depends_on 'pandoc'
  revision 2

 
  def install
  prefix.install 'README.md'
  prefix.install 'Versions'
  bin.install 'pandoc_script'
  end
 
end
