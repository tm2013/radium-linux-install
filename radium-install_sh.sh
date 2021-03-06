#!/bin/sh
apt-get -y update && apt-get -y install git build-essential libssl-dev libdb++-dev libboost-all-dev libqrencode-dev libminiupnpc-dev qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev-tools && git clone https://github.com/RadiumCore/Radium.git && cd Radium && qmake USE_03=1 RELEASE=1 && make && cd src && make -f makefile.unix && strip Radiumd
