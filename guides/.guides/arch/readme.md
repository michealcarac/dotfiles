# ArchLinux Guides

A compilation of various ArchLinux fixes/guides


## Sway

Sway Installation on ArchLinux

## Wayland 

Wayland Installation on ArchLinux

### XWayland Issues

XWayland is not installed by default on ArchLinux. 

To fix this, download `xorg-xwayland` `xorg-xlsclients` `qt5-wayland` `glfw-wayland`

```bash
sudo pacman -S   xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland
```

TODO: In the future, this will be included in my ArchLinux configuration script found in 

`$HOME/dotfiles/scripts/.local/bin/` 

or 

`$HOME/.local/bin/` 

(Also included in the PATH variable)
