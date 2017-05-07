class Resumelinux < Formula
  url "https://github.com/privatezero/Resume/archive/0.0.02.zip"
  head "https://github.com/privatezero/Resume.git"
  sha256 "368f8a4a58adb9e6aa2401a3d1e3712ce2f0f6d50b0013a911f6e7a3075aa380"
 
  def install
    prefix.install 'README.md'
    prefix.install 'Versions'
    bin.install 'pandoc_script'
    etc.install 'custom-reference.odt'
  end
  
  def post_install
    system `echo "pandoc_script ~/.linuxbrew/Cellar/resume/$(ls -t /usr/local/Cellar/resume | head -1)/README.md > /dev/null"`
  end
 
end
