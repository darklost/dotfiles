#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo -n "
* Installing NodeJS 10.8.0...
------------------------------------------------------------
"

nvm install v10.8.0

echo -n "
------------------------------------------------------------
* Set NodeJS 10.8.0 as default... "

nvm use v10.8.0
nvm alias default v10.8.0

echo -n "Done!
-----------------------------------------------------------
* NodeJS Version: "

node -v