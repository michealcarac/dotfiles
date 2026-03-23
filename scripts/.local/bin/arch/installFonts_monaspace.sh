#! /bin/bash
# Installs the following fonts:
# -> Monaspace (Nerd Fonts variant)

# Vars
MONASPACE_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Monaspace.zip"
MONASPACE_FILE="Monaspace.zip"
MONASPACE_DIR="Monaspace"

# Enter /tmp
cd /tmp

# Make ~/.fonts if doesn't exist
if [ ! -d "$HOME/.fonts" ]; then
	mkdir -p "$HOME/.fonts"
fi

# Download Monaspace Nerd Fonts, Unzip
wget -O "$MONASPACE_FILE" "$MONASPACE_URL"
unzip -o "$MONASPACE_FILE" -d "$MONASPACE_DIR"
find "$MONASPACE_DIR" -name "*.otf" -exec cp {} ~/.fonts/ \;
find "$MONASPACE_DIR" -name "*.ttf" -exec cp {} ~/.fonts/ \;

# Refresh Font Cache
fc-cache -f -v

# Clean-up
rm -rf /tmp/$MONASPACE_FILE
rm -rf /tmp/$MONASPACE_DIR

# Done!
echo "Monaspace fonts installed!"
echo "Font names are like 'MonaspiceNe Nerd Font', find them all with fc-list"
