#! /bin/bash

cd ..
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install python

brew install pip3

pip3 install --user virtualenv

mkdir redmatPython
cd redmatPython
virtualenv --python=python3 redmat
source redmat/bin/activate

pip install flask
