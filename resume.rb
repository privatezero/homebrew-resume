

class Resume < Formula
  desc ""
  homepage ""
  url "https://github.com/privatezero/Resume/archive/0.0.02.zip"
  head "https://github.com/privatezero/Resume.git"
  sha256 "368f8a4a58adb9e6aa2401a3d1e3712ce2f0f6d50b0013a911f6e7a3075aa380"
  depends_on 'pandoc'

 
  def install
    prefix.install 'README.md'
    prefix.install 'Versions'
    bin.install 'pandoc_script'
  end
  
  def post_install
    system `echo "pandoc_script /usr/local/Cellar/resume/$(ls -t /usr/local/Cellar/resume | head -1)/README.md > /dev/null"`
    system `echo "pandoc_script /usr/local/Cellar/resume/$(ls -t /usr/local/Cellar/resume | head -1)/versions/$(ls -t /usr/local/Cellar/resume/$(ls -t /usr/local/Cellar/resume | head -1)/versions | head -1) > /dev/null"`
  end
 
end
