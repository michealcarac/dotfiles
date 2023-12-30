#!/bin/bash

# Configures global .gitconfig

echo "Welcome to the git configurer"

echo "What is your name?"
read name

echo "What is your email?"
read email

echo "Preferred Editor? (nano, vim, emacs)"
read editor

echo "Default branch? (github is main)"
read branch

echo "Commands to be ran:"
echo "git config --global user.name $name"
echo "git config --global user.email $email"
echo "git config --global core.editor $editor"
echo "git config --global init.defaultBranch $branch"
echo "Okay to continue? (y,n)"

read decision

if [ $decision == y ]; then
	git config --global user.name $name
	git config --global user.email $email
	git config --global core.editor $editor
	git config --global init.defaultBranch $branch
	echo "Config set up"
else
	echo "Config Canceled"
fi
