# git-cb

>A Git subcommand that uses a commit message into a branch name.

## Installation

### Using Homebrew

```bash
brew tap banyan/git-cb
brew install git-cb
```

### Manual Installation

Or manually copy the script to a directory in your PATH:

```bash
# Copy to a directory in your PATH
cp git-cb /usr/local/bin/
chmod +x /usr/local/bin/git-cb
```

## Usage

```bash
# Create a branch based on the latest commit message
git cb

# Create a branch based on a specific commit's message
git cb <commit-sha>
```

## Example

```bash
# Commit a change
git commit -m "Handle A feature"
git cb # This will create and checkout a branch named "handle-a-feature"

# Or with a specific commit SHA
git cb ccd45a97c # This will create and checkout a branch named based on that commit's message
```

## License

MIT
