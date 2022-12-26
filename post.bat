:: This script will add/commit/push changes into git repository
:: OS: Windows
:: Version: 1.0
:: Author: Lei Zhang

@echo off
if [%1] == [] echo "Please enter commit messages" && exit
echo "Updating github repo, git adding and committing..."
echo,
git add .
git commit -m %1
echo,
git push
echo,
echo "------ git status:------"
git status