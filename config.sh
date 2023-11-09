#!/bin/bash

cd ./bundle/Vundle.vim/autoload/vundle
sed -i 's/--shallow-submodules//g' installer.vim
