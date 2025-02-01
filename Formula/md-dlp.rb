class MdDlp < Formula
  include Language::Python::Virtualenv

  desc "Download and convert web content to markdown format"
  homepage "https://github.com/markshawn2020/md-dlp"
  url "https://github.com/markshawn2020/md-dlp/archive/v1.0.0.tar.gz"
  sha256 "d0f0889a112e53f4797d6224438e88a32849641945ac432dece473f66d926fca" # 需要替换为实际的 SHA256
  license "MIT"

  depends_on "python"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/70/8e/0e2d847013cb52cd35b38c011cd823c42b87f2f13b31ef4f646d65c8b61d/requests-2.31.0-py3-none-any.whl"
    sha256 "58cd2187c01e70e6e26505bca751777aa9f2ee0b7f4300988b709f44e013003f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"md-dlp", "--help"
  end
end
