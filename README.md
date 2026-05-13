# MyTerminal-for-Study
---
A set of intuitive configs for for making a user-friendly shell for linux newbies and veterans-(maybe ). The choices are heavily opinionated

### BASED ON :
[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu-E9431F?style=for-the-badge&logo=ubuntu&logoColor=white)](https://ubuntu.com/)
Special thanks to Canonical and the Ubuntu community for providing the robust foundation for this environment.
---





# TERMINAL : GHOSTTY
### 💖 Acknowledgements
This setup is built around:
[![Ghostty Ubuntu](https://img.shields.io/badge/Terminal-Ghostty_Ubuntu-E9431F?style=for-the-badge&logo=ubuntu&logoColor=white)](https://github.com/mkasberg/ghostty-ubuntu)

Special thanks to Matt Kasberg for maintaining the Ubuntu PPA and making this high-performance, GPU-accelerated terminal accessible for Ubuntu users.

### ⚖️ License & Attribution
The Ghostty installation support for Ubuntu is provided by the **ghostty-ubuntu** project. Ghostty itself is licensed under the **MIT License**. You can find the PPA details and source [here](https://github.com/mkasberg/ghostty-ubuntu).

1. Installation Command :
```bash
sudo add-apt-repository ppa:mkasberg/ghostty-ubuntu
sudo apt update
sudo apt install ghostty
```
2. Set the theme : (_here we are using [**Catppuccin Macchiato**](https://github.com/catppuccin/ghostty)_)
```bash
echo "theme = Catppuccin Macchiato" >> ~/.config/ghostty/config
```

** Note for Debian Users **
if the above installation command does not work : Follow the commands listed [**_here_**](https://debian.griffo.io/)
---





# FONT : JETBRAINS MONO NERD FONT
---
### 💖 Acknowledgements
This setup is built around:
[![Nerd Fonts](https://img.shields.io/badge/Font-JetBrainsMono_Nerd_Font-007acc?style=for-the-badge&logo=font-awesome&logoColor=white)](https://github.com/ryanoasis/nerd-fonts)

Special thanks to Ryan Oasis and the contributors for the massive effort in patching developer fonts with a huge collection of glyphs and icons.

### ⚖️ License & Attribution
The patched fonts are provided by the **Nerd Fonts** project, which is licensed under the **MIT License**. The underlying **JetBrains Mono** font is licensed under the **Apache License 2.0**. You can find the full repository [here](https://github.com/ryanoasis/nerd-fonts).

1. Installation Command:
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
fc-cache -fv
```

2. Verify it the fonts have been properly Installed or not :
```bash
fc-list | grep -i "JetBrainsMono"
```

3. Apply the fonts :
```bash
echo "font-family = JetBrainsMono Nerd Font Mono" >> ~/.config/ghostty/config
echo "font-style = Bold" >> ~/.config/ghostty/config
echo "font-size = 12" >> ~/.config/ghostty/config
```
---






# Shell 

### 💖 Acknowledgements
This setup is built around:
[![Fish Shell](https://img.shields.io/badge/shell-fish-00a2ff?style=for-the-badge&logo=linux&logoColor=white)](https://fishshell.com/)

Special thanks to the fish-shell community for their extensive documentation and support.

### ⚖️ License & Attribution
The core shell functionality is provided by **fish-shell**, which is licensed under the **GPL-2.0**. You can find their full license and source code [here](https://github.com/fish-shell/fish-shell).

## Installing FISH Shell :

1. Run the following command to add the fish repository and install [![Fish Shell](https://img.shields.io/badge/shell-fish-00a2ff?style=for-the-badge&logo=linux&logoColor=white)](https://fishshell.com/) :

```bash
sudo apt-add-repository ppa:fish-shell/release-4
sudo apt update
sudo apt install fish
```
2. Run the following command to change the shell to use [![Fish Shell](https://img.shields.io/badge/shell-fish-00a2ff?style=for-the-badge&logo=linux&logoColor=white)](https://fishshell.com/) :

```bash
chsh -s $(which fish)
```
NOW, restart the terminal and enjoy your FISH ! spoiler- Its delicious ...





# Theming 

## STARSHIP 
---
### 💖 Acknowledgements
This setup is built around:
[![Starship](https://img.shields.io/badge/Prompt-Starship-ffa500?style=for-the-badge&logo=starship&logoColor=white)](https://starship.rs/)

Special thanks to the Starship maintainers and the Rust community for creating such a fast and aesthetic prompt.

### ⚖️ License & Attribution
The prompt engine is provided by **Starship**, which is licensed under the **ISC License**. You can find their full license and source code [here](https://github.com/starship/starship).

1. Run this command to install [![Starship](https://img.shields.io/badge/Prompt-Starship-ffa500?style=for-the-badge&logo=starship&logoColor=white)](https://starship.rs/)
```bash
sudo apt install starship 
```

Please check if starship is installed properly with : 
```bash
starship --version
```

Alternatively , if the above causes ERROR ,
run this instead :( _More Modern_ )
```bash
sudo apt install curl   
curl -sS https://starship.rs/install.sh | sh
```

2. Run this command to link [![Starship](https://img.shields.io/badge/Prompt-Starship-ffa500?style=for-the-badge&logo=starship&logoColor=white)](https://starship.rs/) to [![Fish Shell](https://img.shields.io/badge/shell-fish-00a2ff?style=for-the-badge&logo=linux&logoColor=white)](https://fishshell.com/)
( _i.e. add the starship to your config.fish file_ )
```bash
echo "starship init fish | source" >> ~/.config/fish/config.fish
```

3. Initialise a preset : (_The theme colors and layout are based on the **Catppuccin Powerline Preset** for Starship, which is licensed under the **MIT License**. You can find the preset configuration [here](https://starship.rs/presets/catppuccin-powerline)._)
```bash
starship preset catppuccin-powerline -o ~/.config/starship.toml
```






## POKEGET
---
### 💖 Acknowledgements
This setup is built around:
[![Pokeget](https://img.shields.io/badge/Utility-Pokeget--RS-ffcb05?style=for-the-badge&logo=rust&logoColor=3d7dca)](https://github.com/talwat/pokeget-rs)

Special thanks to talwat and the contributors for building this blazing-fast sprites display tool that adds some fun to every terminal session.

### ⚖️ License & Attribution
The sprite display functionality is provided by **pokeget-rs**, which is licensed under the **MIT License**. You can find the source code and full license [here](https://github.com/talwat/pokeget-rs).

1. Installation Command :
```bash
sudo apt install cargo
cargo install pokeget
```


# TOOLS 

