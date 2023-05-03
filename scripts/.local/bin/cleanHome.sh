#! /bin/bash
# Input: User's $HOME
# Usage: sudo ./.scripts/cleanHome.sh $HOME
# Clear the log and junk files from $HOME for dotfile creation

# If script isnt provided with $HOME, print correct usage
if [ -z "$1" ]; then
	echo "Usage: 'sudo ./.scripts/cleanHome.sh \$HOME'"
	exit
else
	cd $1
fi


# Array of Files to Delete
fileArray=(".bash_logout" ".bash_history" ".lesshst" ".histfile" ".wget-hsts" ".zshrc.zni" ".zcompdump")

# Array of Folders to Delete
folderArray=(".cache" ".mozilla" ".local" ".fonts" ".ssh")

# Delete Files
for str in ${fileArray[@]}; do
	if [ -f $str ]; then
		rm -rf $str
		echo "Deleted: $str"
	fi
done

# Delete Folders
for str in ${folderArray[@]}; do
	if [ -d $str ]; then
		rm -rf $str
		echo "Deleted: $str"
	fi
done


# Rebuild SSH folder with space for Keys
mkdir -p .ssh/keys
touch .ssh/keys/.gitkeep
echo "Added .ssh/keys/.gitkeep"
