class GitCb < Formula
  desc "Git subcommand to create a branch based on commit message"
  homepage "https://github.com/banyan/git-cb"
  url "https://github.com/banyan/git-cb/archive/v0.1.0.tar.gz"
  sha256 "c457b5280a871778699c95438b7f55f719cdd2cc0ec9fa98a5350f360aec6c38"
  license "MIT"

  def install
    bin.install "git-cb"
  end
end
