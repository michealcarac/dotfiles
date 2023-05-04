# ArchLinux Guides

A compilation of various ArchLinux fixes/guides

## Tips n Tricks

### Permissions

Working in the `$HOME` directory should mean you have full access to those files right?

I believe so at least

```bash 
sudo chown -R $USER $HOME  # Ensure the correct USER is being pulled here
```

TODO: Add this to the ArchLinux configuration script or something similar to ensure apps like GitKraken work correctly

### Pulling correct $USER

So when you run a program with `sudo`, $USER should switch to `root`. 

To find out what user actually called that program

```bash
currentuser=$(who | awk 'NR==1{print $1}') # From https://unix.stackexchange.com/a/304761
```

TODO: Add this to the ArchLinux configuration script instead of asking for username?

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
