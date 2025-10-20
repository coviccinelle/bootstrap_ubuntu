#!/bin/bash
set -e

echo "🔧 Updating system..."
sudo apt update -y && sudo apt upgrade -y

echo "📦 Installing base packages..."
sudo apt install -y vim curl git zsh python3 python3-pip nodejs npm \
  qemu-system qemu-utils

echo "💫 Installing Oh My Zsh..."
# Only install if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "🌀 Setting zsh as default shell..."
chsh -s "$(which zsh)"

echo "✅ Done! Restart your terminal or run 'zsh' to start fresh."

