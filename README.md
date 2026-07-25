<div align="center">

# 🖥️ MyTerminal-for-Study

### An opinionated, batteries-included terminal setup for Ubuntu

*Fish shell • Ghostty • Starship • A pinch of chaos (pokeget)*

[![Linux Compatible](https://img.shields.io/badge/OS-Linux_Compatible-00C7B7?style=for-the-badge&logo=linux&logoColor=white)](https://ubuntu.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge&logo=opensourceinitiative&logoColor=white)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg?style=for-the-badge&logo=git&logoColor=white)](https://github.com/apathete-str/MyTerminal-for-Study/pulls)

[![Stars](https://img.shields.io/github/stars/apathete-str/MyTerminal-for-Study?style=for-the-badge&color=f1c40f&logo=github)](https://github.com/apathete-str/MyTerminal-for-Study/stargazers)
[![Forks](https://img.shields.io/github/forks/apathete-str/MyTerminal-for-Study?style=for-the-badge&color=3498db&logo=github)](https://github.com/apathete-str/MyTerminal-for-Study/network/members)
[![Contributors](https://img.shields.io/github/contributors/apathete-str/MyTerminal-for-Study?style=for-the-badge&color=ea4aaa&logo=github)](https://github.com/apathete-str/MyTerminal-for-Study/graphs/contributors)

</div>

<br>

> ⚠️ **Still in Alpha** — expect rough edges, and please open an issue if something breaks.

A set of intuitive configs and tools for building a friendly, good-looking shell environment — for Linux newbies and veterans alike. The choices here are heavily opinionated, built around **Ubuntu**, **Fish shell**, **Ghostty**, and **Starship**.

<div align="center">

  <table>
    <tr>
      <td align="center"><img src="https://github.com/user-attachments/assets/67a64174-a8ae-4fac-ac1b-ea2ee9d665dc" alt="Screenshot 1" width="100%"/></td>
      <td align="center"><img src="https://github.com/user-attachments/assets/84d91fa9-c13d-4c29-8caa-28c9a141fa19" alt="Screenshot 2" width="100%"/></td>
      <td align="center"><img src="https://github.com/user-attachments/assets/c90b137b-2ea7-4307-8c23-f54ae2ab4d23" alt="Screenshot 3" width="100%"/></td>
    </tr>
  </table>

  <video src="https://github.com/user-attachments/assets/4cd638f0-5acf-4c2a-a0ba-37d3c1152f22" width="100%" autoplay loop muted playsinline></video>

</div>

---

## 📋 Table of Contents

- [🚀 Quick Install](#-quick-install-ubuntu-2604)
- [🧩 What Gets Installed](#-what-gets-installed)
- [🖼️ Manual Setup](#️-manual-setup)
  - [Terminal — Ghostty](#terminal--ghostty)
  - [Font — JetBrains Mono Nerd Font](#font--jetbrains-mono-nerd-font)
- [🐟 Shell — Fish](#-shell--fish)
- [🎨 Theming — Starship](#-theming--starship)
- [🎉 Fun Extras](#-fun-extras)
  - [Pokeget](#pokeget)
  - [Nitch](#nitch--system-info)
- [🛠️ Power Tools](#️-power-tools)
  - [Eza](#eza--ls-alternative)
  - [Zoxide](#zoxide--smarter-cd)
  - [Thefuck](#thefuck--command-correction)
- [⚙️ The `config.fish` File](#️-the-configfish-file)
- [📜 License](#-license)

---

## 🚀 Quick Install (Ubuntu 26.04)

The fastest way to get set up. The interactive installer will ask a few `y/n` questions along the way (Nerd Font symbols for nitch, optional Cargo installs for pokeget/eza, and whether to set Fish as your default shell) — nothing runs silently behind your back.

```bash
sudo apt update
sudo apt install curl git
bash -c "$(curl -fsSL https://raw.githubusercontent.com/apathete-str/MyTerminal-for-Study/main/install.sh)"
```

> 💡 **Note:** `install.sh` handles Fish, Starship, Zoxide, thefuck, nitch, and your `config.fish`. **Ghostty and the JetBrains Mono Nerd Font are set up manually** — see below — since they involve a PPA and a font download that are best done (and verified) by hand.

<br>

## 🧩 What Gets Installed

| Step | Component | Interactive? |
|:----:|-----------|:---:|
| 1 | Base packages (`curl`, `wget`, `git`, `unzip`, `p7zip-full`, `unrar-free`, `build-essential`, `cargo`, etc.) | — |
| 2 | 🐟 [Fish shell](#-shell--fish) | — |
| 3 | 😤 [thefuck](#thefuck--command-correction) | — |
| 4 | 📁 [Zoxide](#zoxide--smarter-cd) + 🚀 [Starship](#-theming--starship) | — |
| 5 | 📊 [Nitch](#nitch--system-info) | ✅ Nerd Font symbols? |
| 6 | 🐹 [Pokeget](#pokeget) + 🗂️ [Eza](#eza--ls-alternative) (via Cargo) | ✅ Install via Cargo? |
| 7 | Your [`config.fish`](#️-the-configfish-file) + Catppuccin Powerline Starship preset | — |
| 8 | Set Fish as default shell | ✅ Change default shell? |

<br>

## 🖼️ Manual Setup

### Terminal — Ghostty

<img src="https://img.shields.io/badge/Terminal-Ghostty_Ubuntu-E9431F?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Ghostty"/>

> 💖 **Acknowledgements** — Built around [ghostty-ubuntu](https://github.com/mkasberg/ghostty-ubuntu). Special thanks to **Matt Kasberg** for maintaining the Ubuntu PPA and making this GPU-accelerated terminal easy to install on Ubuntu.
>
> ⚖️ **License** — Ghostty itself is **MIT licensed**; the Ubuntu packaging support comes from the ghostty-ubuntu project.

**1. Install:**
```bash
sudo add-apt-repository ppa:mkasberg/ghostty-ubuntu
sudo apt update
sudo apt install ghostty
```

**2. Set the theme** (using [Catppuccin Macchiato](https://github.com/catppuccin/ghostty)):
1. Open Ghostty
2. Press <kbd>Ctrl</kbd> + <kbd>,</kbd> to open its config file
3. Paste this line in and save:
   ```bash
   theme = Catppuccin Macchiato
   ```

> 🐧 **Debian users:** if the PPA command above doesn't work, follow the steps [here](https://debian.griffo.io/) instead.

<br>

### Font — JetBrains Mono Nerd Font

<img src="https://img.shields.io/badge/Font-JetBrainsMono_Nerd_Font-007acc?style=for-the-badge&logo=font-awesome&logoColor=white" alt="Nerd Font"/>

> 💖 **Acknowledgements** — Built around [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts). Special thanks to **Ryan Oasis** and contributors for patching developer fonts with a massive collection of glyphs and icons.
>
> ⚖️ **License** — Nerd Fonts patches are **MIT licensed**; the underlying **JetBrains Mono** font is licensed under **Apache 2.0**.

**1. Install:**
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
fc-cache -fv
```

**2. Verify installation:**
```bash
fc-list | grep -i "JetBrainsMono"
```

**3. Apply it in Ghostty:**
1. Open Ghostty
2. Press <kbd>Ctrl</kbd> + <kbd>,</kbd>
3. Paste these lines in:
   ```bash
   font-family = JetBrainsMono Nerd Font Mono
   font-style = Bold
   font-size = 12
   ```

---

## 🐟 Shell — Fish

<img src="https://img.shields.io/badge/shell-fish-00a2ff?style=for-the-badge&logo=linux&logoColor=white" alt="Fish Shell"/>

> 💖 **Acknowledgements** — Built around [fish-shell](https://fishshell.com/). Special thanks to the fish-shell community for their extensive documentation and support.
>
> ⚖️ **License** — fish-shell is licensed under **GPL-2.0**.

**1. Install:**
```bash
sudo apt-add-repository ppa:fish-shell/release-4
sudo apt update
sudo apt install fish
```

**2. Make it your default shell:**
```bash
chsh -s $(which fish)
```

Restart your terminal and enjoy your 🐟 — it's delicious.

---

## 🎨 Theming — Starship

<img src="https://img.shields.io/badge/Prompt-Starship-ffa500?style=for-the-badge&logo=starship&logoColor=white" alt="Starship"/>

> 💖 **Acknowledgements** — Built around [Starship](https://starship.rs/). Special thanks to the Starship maintainers and the Rust community for such a fast, aesthetic prompt.
>
> ⚖️ **License** — Starship is licensed under the **ISC License**.

**1. Install:**
```bash
sudo apt install starship
```
Check that it worked:
```bash
starship --version
```
If that fails, use the more modern installer instead:
```bash
sudo apt install curl
curl -sS https://starship.rs/install.sh | sh
```

**2. Hook it into Fish:**
```bash
echo "starship init fish | source" >> ~/.config/fish/config.fish
```

**3. Apply the preset** — theme colors and layout are based on the [Catppuccin Powerline preset](https://starship.rs/presets/catppuccin-powerline) (MIT licensed):
```bash
starship preset catppuccin-powerline -o ~/.config/starship.toml
```

---

## 🎉 Fun Extras

### Pokeget

<img src="https://img.shields.io/badge/Utility-Pokeget--RS-ffcb05?style=for-the-badge&logo=rust&logoColor=3d7dca" alt="Pokeget"/>

> 💖 **Acknowledgements** — Built around [pokeget-rs](https://github.com/talwat/pokeget-rs). Special thanks to **talwat** and contributors for this blazing-fast sprite display tool.
>
> ⚖️ **License** — MIT.

```bash
sudo apt install cargo
cargo install pokeget
```
Run it:
```bash
pokeget random
```

### Nitch — System Info

<img src="https://img.shields.io/badge/System_Fetch-nitch-9400d3?style=for-the-badge&logo=linux&logoColor=white" alt="nitch"/>

> 💖 **Acknowledgements** — Built around [nitch](https://github.com/ssleert/nitch). Special thanks to **ssleert** for a fast, minimal system-fetch tool that complements a clean terminal aesthetic.
>
> ⚖️ **License** — MIT.

```bash
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
```
Run it:
```bash
nitch
```

---

## 🛠️ Power Tools

> ⚡ A bit more advanced — these are the tools I actually use day-to-day.

### Eza — `ls` Alternative

<img src="https://img.shields.io/badge/Utility-eza-4E9A06?style=for-the-badge&logo=linux-foundation&logoColor=white" alt="eza"/>

> 💖 **Acknowledgements** — Built around [eza](https://github.com/eza-community/eza). Special thanks to the **eza-community** for continuing the legacy of `exa` with a feature-rich `ls` replacement.
>
> ⚖️ **License** — MIT.

```bash
cargo install eza
```
Alias it in place of `ls`:
```bash
echo "abbr -a ls 'eza --icons --group-directories-first'" >> ~/.config/fish/config.fish
```

### Zoxide — Smarter `cd`

<img src="https://img.shields.io/badge/Navigation-zoxide-005f87?style=for-the-badge&logo=gitbook&logoColor=white" alt="zoxide"/>

> 💖 **Acknowledgements** — Built around [zoxide](https://github.com/ajeetdsouza/zoxide). Special thanks to **Ajeet D'Souza** for a "smarter" `cd` that learns your habits and speeds up navigation.
>
> ⚖️ **License** — MIT.

```bash
sudo apt install zoxide
```
If that doesn't work:
```bash
sudo apt install curl
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

### Thefuck — Command Correction

<img src="https://img.shields.io/badge/Utility-thefuck-ff0000?style=for-the-badge&logo=python&logoColor=white" alt="thefuck"/>

> 💖 **Acknowledgements** — Built around [thefuck](https://github.com/nvbn/thefuck). Special thanks to **Vladimir Iakovlev** and the community for saving time by correcting your last broken command.
>
> ⚖️ **License** — MIT.

```bash
sudo apt install python3-dev python3-pip python3-setuptools
sudo apt install pipx
pipx install thefuck
```
> 📌 Install command modified from upstream since the original was broken.

---

## ⚙️ The `config.fish` File

Everything above is wired together in one config. Pull it down directly:

```bash
curl -o ~/.config/fish/config.fish https://raw.githubusercontent.com/apathete-str/MyTerminal-for-Study/main/config.fish
source ~/.config/fish/config.fish
```

**What's inside:**

| Feature | Behavior |
|---|---|
| 🎲 Greeting | Runs `pokeget random` on shell start (if installed) |
| 🧭 `..` / `...` | Quick `cd ..` and `cd ../..` abbreviations |
| 📂 `ls` | Aliased to `eza --icons --group-directories-first` (if installed) |
| 🛑 `rm` / `cp` / `mv` | Run with `-i` (confirm before overwrite/delete) |
| 📦 `extract <file>` | One command to unpack `.zip`, `.tar.gz`, `.rar`, `.7z`, `.bz2`, and more |
| 📁 Zoxide | Initialized if installed |
| 😤 thefuck | Initialized if installed |
| 🚀 Starship | Initialized if installed |
| 🛠️ `$EDITOR` | Set to `code` |

All tool hooks are wrapped in `command -v` checks, so the config won't error out if a tool isn't installed.

---

## 📜 License

This project is licensed under the **MIT License** — see [LICENSE](LICENSE) for details.

Individual tools bundled or referenced here retain their own licenses (linked in each section above); this repo only provides the glue.

<div align="center">

<br>

Made with 🐟 and a little too much terminal customization.

</div>
