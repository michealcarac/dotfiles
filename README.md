# The dotfiles :tm:

My personal Dotfiles for my linux Installs. 

Most of these configs can be stowed on any distro, but not all `scripts` will work due to package manager (pacman) dependencies.

## Installation

You will need `git` and GNU `stow`

Clone `dotfiles` into your `$HOME` directory or `~`

```bash
git clone https://github.com/michealcarac/dotfiles.git
```

Update any submodules

```bash
git submodule update --init --recursive
```

I use `stow` to only pull what I want as I do not use every tool.

Knowing this, my configurations are all self contained (hopefully)

To pull in the config of the desired program 

ex: zsh (run in `$HOME/dotfiles`

```bash
stow zsh 
```

Which will set up the configuration in your `$HOME` directory.

Each program installation will be described below and the best practice to pull them in.

## Zsh

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
