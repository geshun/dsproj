#!/usr/bin/bash

read -p "directory name: " directory
read -p "include git - version control: [yes/no] " include_git

mkdir -p $directory
touch $directory/README.md
touch $directory/config.yml

# data directories
mkdir -p $directory/data
mkdir -p $directory/data/raw
mkdir -p $directory/data/preprocess

# code directories
mkdir -p $directory/code
mkdir -p $directory/code/data
mkdir -p $directory/code/utils
mkdir -p $directory/code/notebooks

touch $directory/code/data/config.ini
# documentation
mkdir -p $directory/docs
mkdir -p $directory/docs/research
mkdir -p $directory/docs/reports
mkdir -p $directory/docs/reports/figures

# git version control
if [ $include_git = 'yes' ]; then
	cd $directory
	git init
	touch .gitignore
	echo "data/" > .gitignore
	git add .
	git commit -m "initial commit"
fi
