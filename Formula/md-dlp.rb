class MdDlp < Formula
  include Language::Python::Virtualenv

  desc "Download and convert web content to markdown format"
  homepage "https://github.com/markshawn2020/md-dlp"
  url "https://github.com/markshawn2020/md-dlp/archive/v1.0.0.tar.gz"
  sha256 "d0f0889a112e53f4797d6224438e88a32849641945ac432dece473f66d926fca"
  license "MIT"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"md-dlp", "--help"
  end
end
