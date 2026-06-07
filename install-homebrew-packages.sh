#!/bin/bash

set -euo pipefail

FORMULA_PACKAGES=(
    "neovim"
    "stow"
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
    "zoxide"
    "starship"
    "fzf"
    "tree"
    "fastfetch"
    "tokei"
    "tree-sitter-cli"
    "fd"
    "ripgrep"
    "bat"
    "gemini-cli"
    "fnm"
    "zig"
    "rustup"
    "wrk"
)

CASK_PACKAGES=(
    "google-chrome"
    "stats"
    "netnewswire"
    "obsidian"
    "ghostty"
    "lm-studio"
    "visual-studio-code"
    "codex"
    "codex-app"
    "antigravity"
    "claude"
    "claude-code"
    "zed"
    "discord"
    "steam"
)

require_command() {
    local command_name="$1"

    if ! command -v "$command_name" >/dev/null 2>&1; then
        echo "❌ Required command not found: ${command_name}"
        exit 1
    fi
}

install_formula_packages() {
    echo "📦 Installing Homebrew formula packages..."

    for package in "${FORMULA_PACKAGES[@]}"; do
        if brew list --formula | grep -q "^${package}$"; then
            echo "  ✅ ${package} is already installed."
        else
            echo "  ✨ Installing ${package}..."

            if brew install "${package}" >/dev/null 2>&1; then
                echo "  ✅ Successfully installed ${package}."
            else
                echo "  ❌ Failed to install ${package}. Skipping."
            fi
        fi
    done
}

install_cask_packages() {
    echo "🖥️  Installing Homebrew cask applications..."

    for cask in "${CASK_PACKAGES[@]}"; do
        if brew list --cask | grep -q "^${cask}$"; then
            echo "  ✅ ${cask} is already installed."
        else
            echo "  ✨ Installing ${cask}..."

            if brew install --cask "${cask}" >/dev/null 2>&1; then
                echo "  ✅ Successfully installed ${cask}."
            else
                echo "  ❌ Failed to install ${cask}. Skipping."
            fi
        fi
    done
}

main() {
    if [[ "$OSTYPE" != "darwin"* ]]; then
        echo "❌ This script is designed for macOS (Homebrew). Detected OS: $OSTYPE"
        exit 1
    fi

    require_command "brew"

    echo "🚀 Starting Homebrew package installation..."
    install_formula_packages
    install_cask_packages
    echo "🎉 Completed."
}

main "$@"
