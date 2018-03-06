

class Resume < Formula
  desc ""
  homepage ""
  url "https://github.com/privatezero/Resume/archive/0.0.03.zip"
  head "https://github.com/privatezero/Resume.git"
  sha256 "4a351c3423fac387d7216d477cf5fed8e0a5cfd41e96d02adbfd16769c233dfb"
  depends_on 'pandoc'
  revision 2

 
  def install
    prefix.install 'README.md'
    prefix.install 'Versions'
    bin.install 'pandoc_script'
    etc.install 'custom-reference.odt'
  end
  
  def post_install
    system `echo "pandoc_script /usr/local/Cellar/resume/$(ls -t /usr/local/Cellar/resume | head -1)/README.md > /dev/null"`
  end
 
end
