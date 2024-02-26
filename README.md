<div align="center"><h3>Dots</h3></div>

![Pop!OS Showcase](./showcase/pop_os_setup_showcase.png)

> [!WARNING] 
> This setup config is rushed. Some things might not work for you.

First, install all these things
Base Packages
```txt
sudo apt install git vim neovim tar zip \
unzip gzip p7zip build-essential make \
kitty zsh neofetch bashtop papirus-icon-theme \
phinger-cursor-theme python3 golang rustc cargo
```
NVM (Node Version Manager)
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```
OhMyZSH
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Fast syntax highlighting
```
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```
Autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Vencord
```
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"
```

Now, Clone this repo and copy everything from this repo to where they belong
```
# Copy Gruvbox GTK theme
cp -r .themes ~/

# Copy .zshrc
cp -r zshrc ~/.zshrc

# Copy neofetch config
cp -r neofetch ~/.config/

# Copy kitty config
cp -r kitty ~/.config/

# Copy Vencord (Discord) theme
cp -r ./Vencord/themes/* ~/.config/Vencord/themes/*
```
### Gnome extensions
- User Themes
- Rounded Window Corners 
	- radius: 9 (default: 12)
	-  corner smoothing: 1 (default: 0)
### Extra stuff
Spotify, VSCode, Obsidian, Insomnia, Postman, Google Chrome, VLC
