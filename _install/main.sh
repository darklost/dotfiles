#!/bin/zsh

echo -n "
===========================================================
  ____          _     _ 
 / ___|  _   _ | | __| | __ __ _ 
 \___ \ | | | || |/ /| |/ // _\` |
  ___) || |_| ||   < |   <| (_| |
 |____/  \__,_||_|\_\|_|\_\\\\__,_|
===========================================================
"

echo "Install Oh-My-Zsh..."
echo "-----------------------------------------------------------"

./_install/_omz.sh

echo -n "
-----------------------------------------------------------
Oh-My-Zsh installed successfully!
-----------------------------------------------------------
Import _install/zshrc/main.rc
-----------------------------------------------------------
"

cat ./_install/zshrc/main.rc >> $HOME/.zshrc

source $HOME/.zshrc

echo -n "
===========================================================
Setup NVM & NodeJS & Yarn...
-----------------------------------------------------------
Installing NVM ...
----------------------------------------------------------
"

./_install/_nvm.sh

echo -n "
-----------------------------------------------------------
Installing Yarn ...
----------------------------------------------------------
"

./_install/_yarn.sh

echo -n "
===========================================================
Install lazygit
-----------------------------------------------------------
"

./_install/_lazygit.sh

echo -n "
===========================================================
Load more zshrc
-----------------------------------------------------------
"

find ./_zshrc -type f -name "*.rc" | xargs cat >> $HOME/.zshrc

source $HOME/.zshrc

echo -n "
===========================================================
Upgrade packages
-----------------------------------------------------------
"

sudo apt update && sudo apt upgrade -y

echo -n "
===========================================================
git config --global
-----------------------------------------------------------
"
git config --global user.name "SukkaW"
git config --global user.email "isukkaw@gmail.com"
