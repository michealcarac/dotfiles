#! /bin/bash
# Installs the following fonts:
# -> Awesome Fonts 6
# -> Awesome Fonts 4

# Vars
AWESOME_FONTS6="https://use.fontawesome.com/releases/v6.4.0/fontawesome-free-6.4.0-desktop"
AWESOME_FONTS6_FILE="fontawesome-free-6.4.0-desktop"

AWESOME_FONTS4="https://fontawesome.com/v4/assets/font-awesome-4.7.0"
AWESOME_FONTS4_FILE="font-awesome-4.7.0"

# Enter /tmp
cd /tmp

# Make ~.fonts if doesn't exist
if [ ! -d "$HOME/.fonts" ]; then
	mkdir $HOME/.fonts
fi

# Download Awesome Fonts 6, Unzip
wget $AWESOME_FONTS6.zip
unzip $AWESOME_FONTS6_FILE.zip
cp $AWESOME_FONTS6_FILE/otfs/* ~/.fonts/

# Download Awesome Fonts 4, Unzip
wget $AWESOME_FONTS4.zip
unzip $AWESOME_FONTS4_FILE.zip
cp $AWESOME_FONTS4_FILE/fonts/*.otf ~/.fonts/

# Refresh Font Cache
fc-cache -f -v

# Clean-up
rm -rf /tmp/$AWESOME_FONTS6_FILE*
rm -rf /tmp/$AWESOME_FONTS4_FILE*

# Done!
echo "Fonts Updated!"
