#!/bin/bash

sudo apt remove -y libayatana-appindicator3-1
sudo apt install -y gcc cmake libappindicator3-dev libgtk-3-dev pkg-config git
git clone https://github.com/comexr/fan-control.git
mkdir fan
cd fan
cmake -DUSER=$(whoami) -DGROUP=$(whoami) -DHOME=/home/$(whoami) ~/fan-control
cmake --build .
sudo cmake --install .
reboot
