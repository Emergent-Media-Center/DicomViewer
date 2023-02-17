#!/usr/bin/env bash

sudo apt install -y bison build-essential clang flex gperf \
libatspi2.0-dev libbluetooth-dev libclang-dev libcups2-dev libdrm-dev \
libegl1-mesa-dev libfontconfig1-dev libfreetype6-dev \
libgstreamer1.0-dev libhunspell-dev libnss3-dev libopengl-dev \
libpulse-dev libssl-dev libts-dev libx11-dev libx11-xcb-dev \
libxcb-glx0-dev libxcb-icccm4-dev libxcb-image0-dev \
libxcb-keysyms1-dev libxcb-randr0-dev libxcb-render-util0-dev \
libxcb-shape0-dev libxcb-shm0-dev libxcb-sync-dev libxcb-util-dev \
libxcb-xfixes0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxcb1-dev \
libxcomposite-dev libxcursor-dev libxdamage-dev libxext-dev \
libxfixes-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev \
libxkbfile-dev libxrandr-dev libxrender-dev libxshmfence-dev \
libxshmfence1 llvm ninja-build nodejs python-is-python3 python3 cmake build-essential

wget https://download.qt.io/official_releases/qt/6.4/6.4.2/single/qt-everywhere-src-6.4.2.tar.xz

tar xf qt-everywhere-src-6.4.2.tar.xz
cd qt-everywhere-src-6.4.2

./configure -prefix /usr/local/Qt6

cmake --build . --parallel
sudo cmake --install .
