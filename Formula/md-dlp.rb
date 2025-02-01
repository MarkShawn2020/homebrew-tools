class MdDlp < Formula
  include Language::Python::Virtualenv

  desc "Download and convert web content to markdown format"
  homepage "https://github.com/markshawn2020/md-dlp"
  url "https://github.com/markshawn2020/md-dlp/archive/v0.0.1.tar.gz"
  sha256 "3beec53dc90390055d239e780a7a83c8235efc823861ce32fc77bc986a27eeb5"
  license "MIT"

  depends_on "python@3.11"

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
    sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/ce/21/952a240de1c196c7e3fbcd4e559681f0419b1280c617db21157a0390717b/soupsieve-2.5.tar.gz"
    sha256 "5663d5a7b3bfaeee0bc4372e7fc48f9cff4940b3eec54a6451cc5299f1097690"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"md-dlp", "--help"
  end
end
