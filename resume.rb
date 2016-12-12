

class Resume < Formula
  desc ""
  homepage ""
  url "https://github.com/privatezero/Resume/archive/0.0.00.zip"
  sha256 "247b080194643da731dc213ff55a280e7ea5a885736c46d3900cae214f8e7754"
  depends_on 'pandoc'

 
  def install
  prefix.install 'README.md'
  end
 
end
