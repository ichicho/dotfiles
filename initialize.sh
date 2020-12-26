#!/bin/bash

path=$(dirname $(readlink -f $0))
plugins_dir="${path}/.vim/pack/plugins/start"

mkdir -p ${plugins_dir}
cd ${plugins_dir}
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/tpope/vim-fugitive.git

# Install YouCompleteMe with C enabled
sudo apt update
sudo apt install -y --no-install-recommends build-essential cmake python3-dev python3-setuptools
mkdir -p ${plugins_dir}
cd ${plugins_dir}
git clone https://github.com/ycm-core/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
mkdir -p ~/ycm_build
cd ~/ycm_build
cmake -G "Unix Makefiles" . ${plugins_dir}/YouCompleteMe/third_party/ycmd/cpp \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
cmake --build . --target ycm_core
cp compile_commands.json ~/
cd ${plugins_dir}/YouCompleteMe/third_party/ycmd/third_party/watchdog_deps/watchdog
rm -r build/lib3
python3 setup.py build --build-base=build/3 --build-lib=build/lib3
rm -r ~/ycm_build
