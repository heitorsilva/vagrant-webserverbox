#!/bin/bash

sudo apt-get install python-dev -y
cd /tmp
sudo python get-pip.py
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
exec $SHELL
pyenv install 3.4.0
pyenv rehash