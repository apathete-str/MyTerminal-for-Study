#!/bin/bash

# --- Styling ---
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}🚀 MyTerminal-for-Study: Interactive Installer${NC}"
echo "-----------------------------------------------"

# 1. Ask before starting
read -p "This script will install Fish, Ghostty, and various CLI tools. Continue? (y/n) " start_choice
if [[ ! "$start_choice" =~ ^[Yy]$ ]]; then
    echo "Installation cancelled."
    exit 1
fi

# 2. Base Installations
echo -e "${CYAN}📦 Updating system and installing base packages...${NC}"
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl wget git unzip fontconfig python3-pip

# 3. Fish & Ghostty
sudo add-apt-repository -y ppa:fish-shell/release-4
sudo add-apt-repository -y ppa:mkasberg/ghostty-ubuntu
sudo apt update && sudo apt install -y fish ghostty

# 4. Utilities
sudo apt install -y eza thefuck

# 5. Zoxide & Starship
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
curl -sS https://starship.rs/install.sh | sh -s -- -y

# 6. INTERACTIVE: Nitch Symbols
echo "-----------------------------------------------"
read -p "👾 Do you want to use Nerd Font symbols in nitch? (y/n) " nitch_choice
if [[ "$nitch_choice" =~ ^[Yy]$ ]]; then
    sudo wget -qO /usr/local/bin/nitch https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sudo sh /usr/local/bin/nitch
else
    sudo apt install nitch -y 2>/dev/null || echo "Skipping nitch..."
fi

# 7. INTERACTIVE: Pokeget (Pokemon Sprites)
read -p "🐹 Install pokeget-rs for terminal sprites? (y/n) " poke_choice
if [[ "$poke_choice" =~ ^[Yy]$ ]]; then
    sudo apt install cargo -y
    cargo install pokeget
fi

# 8. Configurations
echo -e "${CYAN}⚙️ Applying your custom config.fish...${NC}"
mkdir -p ~/.config/fish
curl -o ~/.config/fish/config.fish https://raw.githubusercontent.com/apathete-str/MyTerminal-for-Study/main/config.fish
starship preset catppuccin-powerline -o ~/.config/starship.toml

# 9. INTERACTIVE: Default Shell
echo "-----------------------------------------------"
read -p "👑 Set Fish as your default shell? (y/n) " shell_choice
if [[ "$shell_choice" =~ ^[Yy]$ ]]; then
    chsh -s $(which fish)
    echo "Default shell changed to Fish."
fi

echo -e "${CYAN}✅ Done! Restart your terminal to see the changes.${NC}"
