# The dotfiles :tm:

If you gaze into the dotfile, the dotfile gazes also into you.

## Installing

You will need `git`, GNU `stow`, and `zsh`

Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/michealcarac/dotfiles.git
```

Download `zap`

```bash
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
```

Remove the newly created `.zshrc` config file

```bash
sudo rm $HOME/.zshrc
```

Run `stow` in `$HOME/dotfiles` to symlink zsh config files to `$HOME` 

```bash
stow zsh # Just my ZSH Config
```

or

```bash
stow */  # Stow everything (the '/' ignores the README
```

If there is a `.git` folder, it will be stowed as well. It is recommended to just stow what you want

Install appropriate fonts to `$HOME/.fonts` (Pulls down Awesome Fonts 4 and 6)

```bash
installFonts.sh
```

Reboot your system or simply just log out and log back in

## Added Scripts

`installFonts.sh`: Install all required system Fonts

`installZsh.sh`: Install zsh, zap, switch from bash to zsh and then stow zsh config from dotfiles 

`installZshPlugins.sh`: Installs zsh plugins to match those configured in .zshrc

`installNetworkManager.sh`: Installs Network Manager along with the GUI, Applet, and sets backend to iwd (iwctl)

`gitcfg.sh`: Configure a global Git Profile

`cleanHome.sh`: Deprecated. Will be removed eventually

Eventually most of these install scripts will be incorporated into one big script when installing the OS

## Programs

* [zsh](https://github.com/zsh-users/zsh): Alternative to BASH
    * [zap](https://github.com/zap-zsh/zap): Zsh Plugin Manager
        * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Default with Zap, Zsh suggestions
        * [supercharge](https://github.com/zap-zsh/supercharge): Default with Zap, Adds some nice functionality
        * [exa](https://github.com/zap-zsh/exa): Formatting for ls, ls -a, and ls -l 
        * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): Defualt with Zap, Zsh syntax highlighting
    * [purification](https://github.com/Phantas0s/purification): Minimal zsh prompt	
* [NetworkManager](https://wiki.archlinux.org/title/NetworkManager): Manage Wireless and Wired networks
    * [nm-connection-editor](https://archlinux.org/packages/extra/x86_64/nm-connection-editor/): GUI
    * [network-manager-applet](https://archlinux.org/packages/extra/x86_64/network-manager-applet/): Applet
    * [iwd](https://wiki.archlinux.org/title/Iwd):(iwctl), backend for NetworkManager
* [alacritty](https://github.com/alacritty/alacritty): Terminal Emulator
* [sway](https://github.com/swaywm/sway): Tiling Window Manager
    * [wofi](https://man.archlinux.org/man/wofi.1.en): Wayland replacement of Dmenu
    * [waybar](https://github.com/Alexays/Waybar): Top bar 

All current used programs are listed in the `programs` directory

## Guides

`dotfiles/guides` holds various guides on installing to various distros. 
 
Other notes may be stored in these guides as well.

## Conclusion

Work in Progress.
Constantly Updating!
