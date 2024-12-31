# [Trufflehog](https://github.com/trufflesecurity/trufflehog)

[Trufflehog](https://github.com/trufflesecurity/trufflehog) is a tool to find leaked credentials

By adding trufflehog command in pre-commit hook, it's possible to mitigate the risks of leaking credentials.

## Installation

```zsh
brew install trufflehog
```

## Usage

### Scan local repo

```zsh
trufflehog git file://<path-to-repo> --results=verified,unknown
```

### Add to pre-commit hook

Update `.git/hooks/pre-commit`
