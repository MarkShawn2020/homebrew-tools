class MdDlp < Formula
  include Language::Python::Virtualenv

  desc "Download and convert web content to markdown format"
  homepage "https://github.com/markshawn2020/md-dlp"
  url "https://github.com/markshawn2020/md-dlp/archive/v0.0.4.tar.gz"
  sha256 "3b03a62c694ffd65d27d69084e2d03817b573cabeab9c3b0f168aeb2d311d130"
  license "MIT"

  depends_on "python"

  # Get resources from PyPI. You can run `brew update-python-resources md-dlp`
  # to update the resource blocks below.
  def resources
    resources_from_pypi_for_formula "requests", "requests>=2.25.1"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"md-dlp", "--help"
  end
end
