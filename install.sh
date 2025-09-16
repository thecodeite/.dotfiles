#!/bin/bash

# Dotfiles installation script for React/Node.js macOS development
# This script will backup existing dotfiles and create symlinks to the new ones

set -e

DOTFILES_DIR="$HOME/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

echo "🚀 Installing dotfiles for React/Node.js macOS development..."

# Create backup directory
mkdir -p "$BACKUP_DIR"
echo "📁 Created backup directory: $BACKUP_DIR"

# Function to backup and link dotfiles
backup_and_link() {
    local file="$1"
    local target="$HOME/$file"
    local source="$DOTFILES_DIR/$file"
    
    if [ -f "$target" ] || [ -L "$target" ]; then
        echo "📦 Backing up existing $file"
        mv "$target" "$BACKUP_DIR/"
    fi
    
    if [ -f "$source" ]; then
        echo "🔗 Linking $file"
        ln -sf "$source" "$target"
    fi
}

# Backup and link dotfiles
backup_and_link ".zshrc"
backup_and_link ".gitconfig"
backup_and_link ".npmrc"
backup_and_link ".gitignore_global"
backup_and_link ".editorconfig"

# VS Code settings (optional)
if command -v code &> /dev/null; then
    VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
    if [ -d "$VSCODE_SETTINGS_DIR" ]; then
        echo "📦 Backing up VS Code settings"
        [ -f "$VSCODE_SETTINGS_DIR/settings.json" ] && cp "$VSCODE_SETTINGS_DIR/settings.json" "$BACKUP_DIR/vscode_settings.json"
        echo "🔗 Installing VS Code settings"
        cp "$DOTFILES_DIR/.vscode/settings.json" "$VSCODE_SETTINGS_DIR/settings.json"
    fi
fi

echo ""
echo "✅ Installation complete!"
echo ""
echo "📝 Next steps:"
echo "1. Update your Git user info:"
echo "   git config --global user.name 'Your Name'"
echo "   git config --global user.email 'your.email@example.com'"
echo ""
echo "2. Reload your shell:"
echo "   source ~/.zshrc"
echo ""
echo "3. Your old dotfiles have been backed up to: $BACKUP_DIR"
echo ""
echo "🎉 Happy coding!"