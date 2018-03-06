class Resumelinux < Formula
  url "https://github.com/privatezero/Resume/archive/0.0.03.zip"
  head "https://github.com/privatezero/Resume.git"
  sha256 "4a351c3423fac387d7216d477cf5fed8e0a5cfd41e96d02adbfd16769c233dfb"
 
  def install
    prefix.install 'README.md'
    prefix.install 'Versions'
    bin.install 'pandoc_script'
    prefix.install 'custom-reference.odt'
  end
  
  def post_install
    system `echo "pandoc_script ~/.linuxbrew/Cellar/resumelinux/$(ls -t ~/.linuxbrew/Cellar/resumelinux/ | head -1)/README.md > /dev/null"`
  end
 
end
