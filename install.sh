#!/bin/bash
# MyTerminal-for-Study: Automated Install Script for Ubuntu 26.04 LTS

echo "🚀 Starting MyTerminal-for-Study Installation..."

# 1. Update system and install basic dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl wget git unzip fontconfig python3-pip pipx

# 2. Add PPAs and install Fish & Ghostty
echo "🐟 Installing Fish Shell and Ghostty Terminal..."
sudo add-apt-repository -y ppa:fish-shell/release-4
sudo add-apt-repository -y ppa:mkasberg/ghostty-ubuntu
sudo apt update
sudo apt install -y fish ghostty

# 3. Install Utilities (eza, thefuck)
echo "🛠️ Installing Utilities (eza, thefuck)..."
sudo apt install -y eza 
pipx install thefuck

# 4. Install zoxide
echo "📂 Installing zoxide..."
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# 5. Install Starship
echo "⭐ Installing Starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

# 6. Install nitch & pokeget-rs (Downloading pre-built binaries for speed)
echo "👾 Installing nitch and pokeget..."
sudo wget -qO /usr/local/bin/nitch https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sudo sh /usr/local/bin/nitch
cargo install pokeget # Note: Assumes Rust/Cargo is installed, or users can use the release binary

# 7. Install JetBrains Mono Nerd Font
echo "🔤 Installing JetBrains Mono Nerd Font..."
wget -qO JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip -q JetBrainsMono.zip -d ~/.local/share/fonts/
fc-cache -fv
rm JetBrainsMono.zip

# 8. Setup Configurations
echo "⚙️ Fetching configurations from repository..."
mkdir -p ~/.config/fish
curl -o ~/.config/fish/config.fish https://raw.githubusercontent.com/apathete-str/MyTerminal-for-Study/main/config.fish

# Apply Catppuccin Powerline Starship Theme
mkdir -p ~/.config
curl -L https://starship.rs/presets/catppuccin-powerline -o ~/.config/starship.toml

# 9. Set Fish as default shell
echo "👑 Setting Fish as the default shell..."
chsh -s $(which fish)

echo "✅ Installation Complete! Please restart your terminal or log out and back in."