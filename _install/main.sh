#!/bin/zsh

echo -n "
===========================================================

   _____       _    _            ______
  / ____|     | |  | |          |  ____|
 | (___  _   _| | _| | ____ _   | |__   ______   __
  \___ \| | | | |/ / |/ / _\` |  |  __| |  _ \\ \\ / /
  ____) | |_| |   <|   < (_| |  | |____| | | \\ V /
 |_____/ \__,_|_|\\_\\_|\\_\\__,_|  |______|_| |_|\\_/

===========================================================
"

echo "Install Oh-My-Zsh..."
echo "-----------------------------------------------------------"

./_install/_omz.sh

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
Install keybase
-----------------------------------------------------------
"

./_install/_keybase.sh

echo -n "
===========================================================
Import sukka's zshrc
-----------------------------------------------------------
"

find ./_zshrc -type f -name "*.rc" | xargs cat >> $HOME/.zshrc

source $HOME/.zshrc

echo -n "
===========================================================
Install thefuck...
-----------------------------------------------------------
"

sudo pip3 install thefuck

echo -n "
===========================================================
Clone Google ci_editor
-----------------------------------------------------------
"

git clone https://github.com/google/ci_edit.git --depth=50

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
