#!/bin/bash
set -euo pipefail

# Check if a version is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <version>"
  echo "Example: $0 0.1.0"
  exit 1
fi

VERSION="$1"

# Update version in git-cb
sed -i.bak "s/^VERSION=\".*\"/VERSION=\"$VERSION\"/" git-cb
rm git-cb.bak

# Create a release directory
mkdir -p release
rm -rf release/*

# Create a tarball
mkdir -p "release/git-cb-$VERSION"
cp git-cb LICENSE README.md "release/git-cb-$VERSION/"
cd release
tar -czf "git-cb-$VERSION.tar.gz" "git-cb-$VERSION"
cd ..

# Calculate SHA256
SHA256=$(shasum -a 256 "release/git-cb-$VERSION.tar.gz" | cut -d ' ' -f 1)

# Update formula
sed -i.bak "s|url \".*\"|url \"https://github.com/banyan/git-cb/archive/v$VERSION.tar.gz\"|" Formula/git-cb.rb
sed -i.bak "s/sha256 \".*\"/sha256 \"$SHA256\"/" Formula/git-cb.rb
rm Formula/git-cb.rb.bak

echo "Release $VERSION prepared!"
echo "SHA256: $SHA256"
echo ""
echo "Next steps:"
echo "1. Commit the changes: git commit -am \"Release $VERSION\""
echo "2. Create a tag: git tag v$VERSION"
echo "3. Push the changes: git push && git push --tags"
echo "4. Upload the tarball to GitHub releases"
