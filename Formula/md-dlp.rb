class MdDlp < Formula
  include Language::Python::Virtualenv

  desc "Download and convert web content to markdown format"
  homepage "https://github.com/markshawn2020/md-dlp"
  url "https://github.com/markshawn2020/md-dlp/archive/v1.0.0.tar.gz"
  sha256 "" # 需要替换为实际的 SHA256
  license "MIT"

  depends_on "python"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/requests-2.31.0.tar.gz"
    sha256 ""
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"md-dlp", "--help"
  end
end
