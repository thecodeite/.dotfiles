# Dotfiles for React/Node.js macOS Development

A collection of essential dotfiles optimized for React/Node.js development on macOS.

## What's Included

### Shell Configuration
- **`.zshrc`** - Zsh configuration with useful aliases and Node.js/React development shortcuts
- **`.gitconfig`** - Git configuration with helpful aliases and macOS keychain integration
- **`.gitignore_global`** - Global gitignore for common files to exclude

### Development Tools
- **`.npmrc`** - npm configuration with sensible defaults for React/Node.js projects
- **`.eslintrc.json`** - ESLint configuration for JavaScript/TypeScript/React projects
- **`.prettierrc.json`** - Prettier configuration for consistent code formatting
- **`.editorconfig`** - Editor configuration for consistent coding styles

### Project Templates
- **`.gitignore`** - Comprehensive gitignore for Node.js/React projects
- **`.vscode/settings.json`** - VS Code settings optimized for React/Node.js development

## Installation

### Quick Setup
Clone this repository and symlink the dotfiles to your home directory:

```bash
git clone https://github.com/thecodeite/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Backup existing files (optional but recommended)
mv ~/.zshrc ~/.zshrc.backup 2>/dev/null || true
mv ~/.gitconfig ~/.gitconfig.backup 2>/dev/null || true
mv ~/.npmrc ~/.npmrc.backup 2>/dev/null || true

# Create symlinks
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.npmrc ~/.npmrc
ln -sf ~/.dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig

# Reload shell configuration
source ~/.zshrc
```

### Git Configuration
Update your Git user information in `.gitconfig`:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### VS Code Setup
If you use VS Code, copy the settings:

```bash
mkdir -p ~/Library/Application\ Support/Code/User
cp ~/.dotfiles/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

## Features

### Shell Aliases
- **npm shortcuts**: `ni` (npm install), `nr` (npm run), `ns` (npm start), `nt` (npm test)
- **Git shortcuts**: `gs` (git status), `ga` (git add), `gc` (git commit), `gp` (git push)
- **React/JS tools**: `cra` (create-react-app), `rn` (react-native), `expo`, `next`
- **Directory navigation**: `..`, `...`, `....` for quick navigation

### Development Tools
- ESLint configuration for React, TypeScript, and accessibility
- Prettier for consistent code formatting
- EditorConfig for cross-editor consistency
- Comprehensive gitignore for Node.js projects

### macOS Optimizations
- Zsh as default shell (macOS default since Catalina)
- macOS keychain integration for Git
- macOS-specific aliases for showing/hiding hidden files
- Terminal color support

## Customization

Feel free to modify any of these files to suit your preferences:

- Add your own aliases to `.zshrc`
- Modify ESLint rules in `.eslintrc.json`
- Adjust Prettier formatting in `.prettierrc.json`
- Update Git aliases in `.gitconfig`

## Requirements

- macOS (tested on macOS 10.15+)
- Zsh (default on macOS)
- Node.js and npm
- Git

## Optional Tools

These dotfiles work great with:
- [nvm](https://github.com/nvm-sh/nvm) - Node Version Manager
- [VS Code](https://code.visualstudio.com/) - Code editor
- [Homebrew](https://brew.sh/) - Package manager for macOS

## License

MIT License - feel free to use and modify as needed.
