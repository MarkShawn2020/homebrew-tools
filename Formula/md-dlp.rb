class MdDlp < Formula
  include Language::Python::Virtualenv

  desc "Download and convert web content to markdown format"
  homepage "https://github.com/markshawn2020/md-dlp"
  url "https://github.com/markshawn2020/md-dlp/archive/v0.0.2.tar.gz"
  sha256 "e246ab9ca0c2e42f6939226d7793025e164f9b68a113f0b1d0929d35b027b7c8"
  license "MIT"

  depends_on "python@3.11"

  resource "beautifulsoup4" do
    url "https://github.com/markshawn2020/md-dlp/archive/v0.0.2.tar.gz"
    sha256 "e246ab9ca0c2e42f6939226d7793025e164f9b68a113f0b1d0929d35b027b7c8"
  end

  resource "requests" do
    url "https://github.com/markshawn2020/md-dlp/archive/v0.0.2.tar.gz"
    sha256 "e246ab9ca0c2e42f6939226d7793025e164f9b68a113f0b1d0929d35b027b7c8"
  end

  resource "soupsieve" do
    url "https://github.com/markshawn2020/md-dlp/archive/v0.0.2.tar.gz"
    sha256 "e246ab9ca0c2e42f6939226d7793025e164f9b68a113f0b1d0929d35b027b7c8"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"md-dlp", "--help"
  end
end
