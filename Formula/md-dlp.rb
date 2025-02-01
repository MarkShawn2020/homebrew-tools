class MdDlp < Formula
  include Language::Python::Virtualenv

  desc "Download and convert web content to markdown format"
  homepage "https://github.com/markshawn2020/md-dlp"
  url "https://github.com/markshawn2020/md-dlp/archive/v1.0.0.tar.gz"
  sha256 "e2e1a9e0407f41760d95310eda74e2178b846de13fcd02e5e174e5c5e7042914" # 需要替换为实际的 SHA256
  license "MIT"

  depends_on "python"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/70/8e/0e2d847013cb52cd35b38c011cd823c42b87f2f13b31ef4f646d65c8b61d/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"md-dlp", "--help"
  end
end
