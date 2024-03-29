# The dotfiles :tm:

If you gaze into the dotfile, the dotfile gazes also into you.

My personal Dotfiles for my Archlinux Installs. 

Most of these configs can be stowed on any distro, but not all `scripts` will work due to package manager (pacman) dependencies.

## Installation

You will need `git` and GNU `stow`

Clone `dotfiles` into your `$HOME` directory or `~`

```bash
git clone https://github.com/michealcarac/dotfiles.git
```

Now I use `stow` to only pull what I want as I do not use every tool.

Knowing this, my configurations are all self contained (hopefully)

To pull in the config of the desired program 

ex: zsh (run in `$HOME/dotfiles`

```bash
stow zsh 
```

Which will set up the configuration in your `$HOME` directory.

Each program installation will be described below and the best practice to pull them in.

## Zsh

Uses zap for plugin control

Download `zap`

```bash
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
```

Remove the newly created `.zshrc` config file

```bash
sudo rm $HOME/.zshrc*
```

Stow zsh from Dotfiles repo

Remember to `chsh` to zsh if you have not already! (then reboot)

# Additional 

Install appropriate fonts to `$HOME/.fonts` (Pulls down Awesome Fonts 4, 6, and Nerd Fonts)

```bash
installFonts.sh
```

Reboot your system or simply just log out and log back in

## Scripts

Optional use, but adds some extra configuration.

`installFonts.sh`: Install all required system Fonts

`installZsh.sh`: Install zsh, zap, switch from bash to zsh and then stow zsh config from dotfiles 

`installZshPlugins.sh`: Installs zsh plugins to match those configured in .zshrc

`installNetworkManager.sh`: Installs Network Manager along with the GUI, Applet, and sets backend to iwd (iwctl)

`installNetworkManagerTimezone.sh`: Installs Auto timezone into NetworkManager dispatcher

`gitcfg.sh`: Configure a global Git Profile

`cleanHome.sh`: Deprecated. Will be removed eventually

`helper`: Folder, contains helper scripts that are to be moved or has extra functionality

Eventually most of these install scripts will be incorporated into one big script when installing the OS.

Currently, these scripts are all very basic, but will be more "secure" once incorporated into a proper install script. 

## Programs

### Shell
* [zsh](https://github.com/zsh-users/zsh): Alternative to BASH
    * [zap](https://github.com/zap-zsh/zap): Zsh Plugin Manager
        * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Default with Zap, Zsh suggestions
        * [supercharge](https://github.com/zap-zsh/supercharge): Default with Zap, Adds some nice functionality
        * [exa](https://github.com/zap-zsh/exa): Formatting for ls, ls -a, and ls -l 
        * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): Defualt with Zap, Zsh syntax highlighting
    * [purification](https://github.com/Phantas0s/purification): Minimal zsh prompt	

### Terminal
* [alacritty](https://github.com/alacritty/alacritty): Terminal Emulator

### Window Manager
* [sway](https://github.com/swaywm/sway): (Wayland) Tiling Window Manager
    * [wofi](https://man.archlinux.org/man/wofi.1.en): (Wayland) Replacement of Dmenu
    * [waybar](https://github.com/Alexays/Waybar): (Wayland) Top bar
    * [brightnessctl](https://archlinux.org/packages/community/x86_64/brightnessctl/): Lightweight brightness control tool 

### Audio
* [pulseaudio](https://wiki.archlinux.org/title/PulseAudio): Sound Server
    * [pactl](https://man.archlinux.org/man/pactl.1.en): Controls PulseAudio

### Images
* [imv](https://sr.ht/~exec64/imv/): (X11/Wayland) CLI Image Viewer

### Screenshotting
* [grim](https://man.archlinux.org/man/grim.1): (Wayland) Grab images from Wayland Compositor
    * [slurp](https://man.archlinux.org/man/slurp.1.en): (Wayland) Select region in Wayland Compositor
    * [wl-clipboard](https://man.archlinux.org/man/wl-copy.1): (Wayland) Copy and Paste CLI for Wayland 

### Networking
* [NetworkManager](https://wiki.archlinux.org/title/NetworkManager): Manage Wireless and Wired networks
    * [nmtui](https://man.archlinux.org/man/nmtui.1): Text-based NetworkManager editor
    * [nm-connection-editor](https://archlinux.org/packages/extra/x86_64/nm-connection-editor/): GUI
    * [network-manager-applet](https://archlinux.org/packages/extra/x86_64/network-manager-applet/): Applet
    * [iwd](https://wiki.archlinux.org/title/Iwd): (iwctl), backend for NetworkManager

All of these programs are optional and hopefully all work independently of eachother except for `zsh` and `zap`.

The top level of each tree is the main program, and every lower is optional but advised to use.

For example, `nm-connection-editor` is not required, but it is nice to have alongside `NetworkManager` 

Most of the included scripts also pull in these optional dependencies as I personally like them. Obviously edit as you like.

## Guides

`dotfiles/guides` holds various guides on installing to various distros. 
 
Other notes may be stored in these guides as well.

## Backgrounds

Some added backgrounds can be found in `backgrounds` 

These backgrounds are used for my personal install, if you do not want to stow them, ensure to fix that in the `sway` config

```bash
# .config/sway/config
output * bg {Wallpaper Path} fill # Specify monitor for Dual monitor
```

## Conclusion

Work in Progress.
Constantly Updating!
