# My Arch i3wm dotfiles
## System Packages
Just a list of packages for a fresh Arch install.
```
base base-devel linux linux-firmware git sudo nano fastfetch htop amd-ucode nvidia vim bluez bluez-utils networkmanager grub efibootmgr dosfstools mtools os-prober brightnessctl pavucontrol nemo xorg alacritty sublime-text firefox cargo lang cmake make gcc noto-fonts noto-fonts-emoji ttf-font-awesome ttf-jetbrains-mono-nerd ttf-firacode-nerd 
```
## Necessary packages
First, we need yay.
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
Packages to properly setup all the dotfiles. I may put all of these into a bash script in the future.

```
sudo pacman -S ark alacritty fastfetch i3 ksnip picom polybar rofi zsh nm-connection-editor network-manager-applet xclip spotify-launcher feh stow

yay -S sublime-text-4 blueman-git brave-bin visual-studio-code-bin
```
Oh-my-zsh installation:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Change default shell to zsh:
```
chsh -s $(which zsh)
zsh
source ~/.zshrc
```
## Install dotfiles
First, clone my repo to the home folder
```
cd ~
git clone https://github.com/adnope/Arch-i3wm.git
cd Arch-i3wm
stow -S alacritty fastfetch i3 ksnip picom polybar rofi sublime-text zsh
```