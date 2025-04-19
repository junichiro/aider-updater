# Aider Update Manager

Script to easily update the Aider CLI tool to the latest version.

## Features
- Automatically detects latest Aider version
- Installs using uv package manager
- Bash/Zsh alias integration

## Prerequisites
- [uv](https://github.com/astral-sh/uv) installed (`pipx install uv` or `pip install uv`)

## Installation

1. Make the script executable:
```bash
chmod +x update-aider.sh
```

2. Run the update script:
```bash
./update-aider.sh
```

## Alias Setup

Add this to your shell config to run the updater as `aider-update`:

### Bash
```bash
echo 'alias aider-update="$(pwd)/update-aider.sh"' >> ~/.bashrc
source ~/.bashrc
```

### Zsh
```bash
echo 'alias aider-update="$(pwd)/update-aider.sh"' >> ~/.zshrc
source ~/.zshrc
```

## Usage

After setting up the alias:
```bash
# Update aider to latest version
aider-update

# Start aider after updating
aider
```

## How It Works
- Checks Aider's version history page
- Extracts latest version number
- Installs via uv while maintaining existing configurations

## Troubleshooting
If you get permission errors:
```bash
sudo chmod +x update-aider.sh
```

If uv is not found:
```bash
pipx install uv
# or
pip install uv
```
