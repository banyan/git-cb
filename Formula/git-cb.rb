class GitCb < Formula
  desc "Git subcommand to create a branch based on commit message"
  homepage "https://github.com/banyan/git-cb"
  url "https://github.com/banyan/git-cb/archive/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_RELEASE"
  license "MIT"

  def install
    bin.install "git-cb"
  end
end
