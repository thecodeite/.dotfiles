append_line_if_missing() {
  local line="$1"
  local file="$HOME/.zshrc"
  grep -Fxq "$line" "$file" 2>/dev/null || echo "$line" >> "$file"
}

append_line_if_missing 'source_if_exists() { [ -r "$1" ] && source "$1"; }'

ln -s "$PWD/aliases.zsh" "$HOME/.aliases.zsh" 2>/dev/null
append_line_if_missing 'source_if_exists "$HOME/.aliases.zsh"'