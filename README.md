
<div align=center > 
  
# MyTerminal-for-Study

</div>

<div align="center">

[![Linux Compatible](https://img.shields.io/badge/OS-Linux_Compatible-00C7B7?style=for-the-badge&logo=linux&logoColor=white)](https://ubuntu.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge&logo=opensourceinitiative&logoColor=white)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg?style=for-the-badge&logo=git&logoColor=white)](https://github.com/apathete-str/MyTerminal-for-Study/pulls)

[![Stars](https://img.shields.io/github/stars/apathete-str/MyTerminal-for-Study?style=for-the-badge&color=f1c40f&logo=github)](https://github.com/apathete-str/MyTerminal-for-Study/stargazers)
[![Forks](https://img.shields.io/github/forks/apathete-str/MyTerminal-for-Study?style=for-the-badge&color=3498db&logo=github)](https://github.com/apathete-str/MyTerminal-for-Study/network/members)
[![Contributors](https://img.shields.io/github/contributors/apathete-str/MyTerminal-for-Study?style=for-the-badge&color=ea4aaa&logo=github)](https://github.com/apathete-str/MyTerminal-for-Study/graphs/contributors)
<br>
<br>
<br>

<div align="center">
  <video src="https://github.com/user-attachments/assets/4cd638f0-5acf-4c2a-a0ba-37d3c1152f22" width="100%" autoplay loop muted playsinline></video>
</div>


</div>
---
A set of intuitive configs and tools for for making a user-friendly shell for linux newbies and veterans-(maybe ). The choices are heavily opinionated.

### BASED ON :

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu-E9431F?style=for-the-badge&logo=ubuntu&logoColor=white)](https://ubuntu.com/)

---


<div align="center">
  <a href="https://git.io/typing-svg">
    <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=800&size=40&pause=1000&color=00C7B7&center=true&vCenter=true&width=500&lines=INSTALLATION+SCRIPT;QUICK+START+GUIDE" alt="Typing SVG" />
  </a>
</div>
---
( Warning - Still in Alpha )
## 🚀 Quick Install (Ubuntu 26.04)

Run this single command in your terminal to automatically install the shell, tools, fonts, and configurations:

```bash
sudo apt update
sudo apt install curl git
bash -c "$(curl -fsSL https://raw.githubusercontent.com/apathete-str/MyTerminal-for-Study/main/install.sh)"
```
#
<br><br><br>

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
echo "theme = Catppuccin Macchiato" >> ~/.config/ghostty
```

_Note for Debian Users_
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
### 💖 Acknowledgement
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
---





## POKEGET
### 💖 Acknowledgement
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
2. Run it as simply :
```bash
pokeget random
```
---





# NITCH : Display System Info
### 💖 Acknowledgement
This setup is built around:
[![nitch](https://img.shields.io/badge/System_Fetch-nitch-9400d3?style=for-the-badge&logo=linux&logoColor=white)](https://github.com/ssleert/nitch)

Special thanks to ssleert for creating this incredibly fast and minimal system information fetch tool that perfectly complements a clean terminal aesthetic.

### ⚖️ License & Attribution
The system fetch functionality is provided by **nitch**, which is licensed under the **MIT License**. You can find the source code and installation details [here](https://github.com/ssleert/nitch).

1. Installation:
```bash
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
```
2. Run it as simply :
```bash
nitch
```


! A BIT ADVANCED STUFF 

# TOOLS ( I use )

## EZA : ls Alternative 
### 💖 Acknowledgement
This setup is built around:
[![eza](https://img.shields.io/badge/Utility-eza-4E9A06?style=for-the-badge&logo=linux-foundation&logoColor=white)](https://github.com/eza-community/eza)

Special thanks to the eza-community for continuing the legacy of `exa` and maintaining this feature-rich, user-friendly alternative to the traditional `ls` command.

### ⚖️ License & Attribution
The directory listing functionality is provided by **eza**, which is licensed under the **MIT License**. You can find the source code and contributor information [here](https://github.com/eza-community/eza).

1.Installation Command :
```bash
cargo install eza
```

2.Initialize eza to be used instead of ' ls ' :
```bash
echo "abbr -a ls 'eza --icons --group-directories-first'" >> ~/.config/fish/config.fish
```
---

## ZOXIDE : 
### 💖 Acknowledgement
This setup is built around:
[![zoxide](https://img.shields.io/badge/Navigation-zoxide-005f87?style=for-the-badge&logo=gitbook&logoColor=white)](https://github.com/ajeetdsouza/zoxide)

Special thanks to Ajeet D'Souza for building this blazing-fast, "smarter" alternative to the `cd` command that learns your habits and speeds up navigation.

### ⚖️ License & Attribution
The directory navigation functionality is provided by **zoxide**, which is licensed under the **MIT License**. You can find the source code and full documentation [here](https://github.com/ajeetdsouza/zoxide).

```bash
sudo apt install zoxide
```
if the above does not work , run:
```bash
sudo apt install curl 
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

## THEFUCK :
### 💖 Acknowledgement
This setup is built around:
[![thefuck](https://img.shields.io/badge/Utility-thefuck-ff0000?style=for-the-badge&logo=python&logoColor=white)](https://github.com/nvbn/thefuck)

Special thanks to Vladimir Iakovlev and the community for this magnificent tool that saves time by correcting errors in previous console commands.

### ⚖️ License & Attribution
The command-line correction functionality is provided by **thefuck**, which is licensed under the **MIT License**. You can find the source code and full documentation [here](https://github.com/nvbn/thefuck).

1. Installation : 
(_modified because the original Install command was broken_)
```bash
sudo apt install python3-dev python3-pip python3-setuptools
sudo apt install pipx
pipx install thefuck
```
### MY FISH CONFIG FILE : 

(**_The tools are linked_**)
Its uploaded this repo ....u may view it from there.
To change your fish.config file with mine , 

RUN :
```bash
curl -o ~/.config/fish/config.fish https://raw.githubusercontent.com/apathete-str/MyTerminal-for-Study/main/config.fish
source ~/.config/fish/config.fish
```



