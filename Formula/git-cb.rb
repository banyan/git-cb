class GitCb < Formula
  desc "Git subcommand to create a branch based on commit message"
  homepage "https://github.com/banyan/git-cb"
  url "https://github.com/banyan/git-cb/archive/v0.1.2.tar.gz"
  sha256 "f28a26b0da255284ea6ffe0f013aecf47a4a45213aed36fdf5b83a2e856be987"
  license "MIT"

  def install
    bin.install "git-cb"
  end
end
